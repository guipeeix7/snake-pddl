import numpy as np

class BuildGrid:
    matrix = []
    sizeMatrix = 0
    count = 0
    def __init__(self, sizeMatrix):
        self.sizeMatrix = sizeMatrix
        self.matrix = np.zeros((sizeMatrix, sizeMatrix))

    
    def generateConnections(self, posX, posY, file):
        file.write("(:init\n")
        self.connectGrid(posX, posY, file)

    def connectGrid(self, posX, posY, file):
        if(self.matrix[posX][posY] != 1):
            self.matrix[posX][posY] = 1
        else:
            return
        if(posY > 0):
            file.write(f"\t(ISADJACENT pos{posX}-{posY} pos{posX}-{posY-1})\n")       
            self.connectGrid(posX,  posY-1, file)
        if(posX < self.sizeMatrix-1):
            file.write(f"\t(ISADJACENT pos{posX}-{posY} pos{posX+1}-{posY})\n")       
            self.connectGrid(posX+1, posY, file)
        if(posY < self.sizeMatrix-1):
            file.write(f"\t(ISADJACENT pos{posX}-{posY} pos{posX}-{posY+1})\n")       
            self.connectGrid(posX,  posY+1, file)
        if(posX > 0):    
            file.write(f"\t(ISADJACENT pos{posX}-{posY} pos{posX-1}-{posY})\n")       
            self.connectGrid(posX-1, posY, file)

    def defineObjects(self,file):
        file.write('(:objects\n')
        file.write('\t')

        for i in range(self.sizeMatrix):
            for j in range(self.sizeMatrix):
                file.write(f"pos{i}-{j} ")
        file.write('\n)')