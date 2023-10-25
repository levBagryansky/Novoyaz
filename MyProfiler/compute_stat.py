import sys
import os
import matplotlib.pyplot as plt

def generateDict(fileName):
    infoDict = dict()
    file = open(fileName)
    while line := file.readline().split():
        if line[1] in infoDict:
            infoDict[line[1]] += 1
        else:
            infoDict[line[1]] = 1
    return dict(sorted(infoDict.items(), key=lambda item: item[1]))

def main() -> int:
    logfile = "pylog"
    os.system("cmake . -B build/ -DATOMS_PROFILE=1 -DLOG_NAME=" + logfile)
    os.chdir("build")
    os.system("make run_Atoms_log")

    plt.rcParams.update({'font.size': 7})
    plt.figure(figsize=[20, 5], dpi=100)
    table = generateDict(logfile)

    print(table)
    os.chdir("../")
    plt.title("Number of different instructions")
    plt.bar(table.keys(), table.values())
    plt.show()
    plt.savefig('MyProfiler/resources/Stats.png')
    return 0

if __name__ == '__main__':
    sys.exit(main())
