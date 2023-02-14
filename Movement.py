import glob
import re
from time import sleep

class Movement:
    def interpretMovement(self, instance):
        # list_of_input_files = glob.glob('./out/*') # * means all if need specific format then *.csv
        
        lines = []

        with open('./out/out'+str(instance)+'.txt', 'r') as f:
            lines = f.readlines() 
        f.close()
        # print('./out/out'+str(instance)+'.txt')

        
        instructionsArray = []

        lineCounter = 0
        
        for line in lines:
            # print(line, end = "")
            # print(line[0]+"<-- -->"+ "0"+str(lineCounter))
            # if(line[0] == str(lineCounter) or line[0] == "0"+str(lineCounter) ):
                try:
                    xy = re.findall("([0-9]+-[0-9]+)", line)
                    x,y = self.convertToCardinals(xy[0], xy[1])
                    positionMapped = self.convertCardinalToPosition(x,y)
                    instructionsArray.append(positionMapped)
                    lineCounter+=1
                except:
                    pass
                # print("lineCounter = "+str(lineCounter))
                # print(xy)
                # print(xy[0], xy[1])
        if lineCounter == 0:
            print("no plan founded")
            exit()
        # print(instructionsArray)

        file_object = open('./pddlConvertedOut/cmds'+str(instance)+'.txt', 'w')

        for cmd in instructionsArray:
            file_object.write(str(cmd)+",")
        file_object.write("\n")
        file_object.close()   
        
        return instructionsArray

    def convertToCardinals(self, xy0, xy1):
        prevPos = xy0.split('-')
        nextPos = xy1.split('-')
        
        x = int(nextPos[0]) - int(prevPos[0])
        y = int(nextPos[1]) - int(prevPos[1])

        return x,y
    
    def convertCardinalToPosition(self, x,y):
        
        if(x == 0 and y == -1):
            return 0 #up
        if(x == 0 and y == 1):
            return 2 #DOWN = 2 
        if(x == -1 and y == 0):
            return 3 #LEFT = 3
        if(x == 1 and y == 0):
            return 1 #RIGHT = 1
