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


def generateDictBy2(fileName):
    infoDict = dict()
    file = open(fileName)
    line1 = file.readline().split()
    while True:
        if not (line2 := file.readline().split()):
            break
        compound = line1[1] + "\n" + line2[1]
        if compound in infoDict:
            infoDict[compound] += 1
        else:
            infoDict[compound] = 0
        line1 = line2
    return dict(sorted(infoDict.items(), key=lambda item: item[1], reverse=True)[:12])

def generateDictBy3(fileName):
    infoDict = dict()
    file = open(fileName)
    line1 = file.readline().split()
    line2 = file.readline().split()
    while True:
        if not (line3 := file.readline().split()):
            break
        compound = line1[1] + "\n" + line2[1] + "\n" + line3[1]
        if compound in infoDict:
            infoDict[compound] += 1
        else:
            infoDict[compound] = 0
        line1 = line2
        line2 = line3
    return dict(sorted(infoDict.items(), key=lambda item: item[1], reverse=True)[:18])


def main() -> int:
    logfile = "pylog"
    if len(sys.argv) == 2:
        logfile = sys.argv[1]
    else:
        os.system("cmake . -B build/ -DATOMS_PROFILE=1 -DLOG_NAME=" + logfile)
        os.chdir("build")
        os.system("rm" + logfile)
        os.system("make run_Atoms_log")

    plt.rcParams.update({'font.size': 9})
    plt.figure(figsize=[20, 5], dpi=100)

    table = generateDictBy3(logfile)
    print(table)
    plt.title("Number of different instructions")
    plt.bar(table.keys(), table.values())
    # plt.show()
    plt.savefig('MyProfiler/resources/StatsPair.png')
    return 0


if __name__ == '__main__':
    sys.exit(main())
