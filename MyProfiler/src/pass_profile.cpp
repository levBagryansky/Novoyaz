#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
using namespace llvm;

namespace {
    struct MyPass : public FunctionPass {
        static char ID;
        MyPass() : FunctionPass(ID) {}

        bool isFuncLogger(StringRef name) {
            return name == "binOptLogger" || name == "callLogger" ||
                   name == "funcStartLogger" || name == "funcEndLogger" ||
                   name == "operationLogger";
        }

        bool runOnFunction(Function &F) override {
            if (isFuncLogger(F.getName())) {
                return false;
            }
            // Dump Function
            outs() << "In a function called " << F.getName() << "\n\n";

//            for (auto &B : F) {
//                for (auto &I : B) {
//                    // Dump Instructions
//                    outs() << "Instruction: " << (uint64_t)(&I) << "\n";
//                    I.print(outs(), true);
//                    outs() << "\n";
//                }
//                outs() << "\n";
//            }

            // Prepare builder for IR modification
            LLVMContext &Ctx = F.getContext();
            IRBuilder<> builder(Ctx);
            Type *retType = Type::getVoidTy(Ctx);

            // Prepare callLogger function
            ArrayRef<Type *> callParamTypes = {builder.getInt8Ty()->getPointerTo(),
                                               builder.getInt8Ty()->getPointerTo(),
                                               Type::getInt64Ty(Ctx)};
            FunctionType *callLogFuncType =
                FunctionType::get(retType, callParamTypes, false);
            FunctionCallee callLogFunc =
                F.getParent()->getOrInsertFunction("callLogger", callLogFuncType);


            ArrayRef<Type *> operationParamLoggerTypes = {
                builder.getInt8Ty()->getPointerTo()
            };
            FunctionType *operationParamLoggerType =
                FunctionType::get(Type::getVoidTy(builder.getContext()), operationParamLoggerTypes, false);
            FunctionCallee operationParamLoggerFunc = F.getParent()->getOrInsertFunction(
                "operationLogger", operationParamLoggerType);

            for (auto &B : F) {
                for (auto &I : B) {
                    if (auto *phi = dyn_cast<PHINode>(&I)) {
                        continue;
                    }
                    builder.SetInsertPoint(&I);
                    Value *instrName =
                        builder.CreateGlobalStringPtr(I.getOpcodeName());
                    Value *args[] = {instrName};
                    builder.CreateCall(operationParamLoggerFunc, args);
                }
            }

            // Insert loggers for call
            for (auto &B : F) {
                for (auto &I : B) {
                    Value *valueAddr =
                        ConstantInt::get(builder.getInt64Ty(), (int64_t)(&I));
                    if (auto *call = dyn_cast<CallInst>(&I)) {
                        // Insert before call
                        builder.SetInsertPoint(call);

                        // Insert a call to callLogger function
                        Function *callee = call->getCalledFunction();
                        if (callee && !isFuncLogger(callee->getName())) {
                            Value *calleeName =
                                builder.CreateGlobalStringPtr(callee->getName());
                            Value *funcName = builder.CreateGlobalStringPtr(F.getName());
                            Value *args[] = {funcName, calleeName, valueAddr};
                            builder.CreateCall(callLogFunc, args);
                        }
                    }
                }
            }
            return true;
        }
    };
} // namespace

char MyPass::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerMyPass(const PassManagerBuilder &,
                           legacy::PassManagerBase &PM) {
    PM.add(new MyPass());
}
static RegisterStandardPasses
    RegisterMyPass(PassManagerBuilder::EP_OptimizerLast,
                   registerMyPass);
