factor = 100
class AppleSpawn:
    def applePosition(self, pos, file):
        file.write(f"\t(ispoint pos{int(pos[0]/factor)}-{int(pos[1]/factor)})\n")
        return
    
    def generateApplePosition(self, pos, file):
        self.applePosition(pos, file)
        file.write(")")

    def eatApple(self, pos, file):
        file.write("(:goal\n")
        file.write("(and\n")
        file.write(f"\t(not (ispoint pos{int(pos[0]/factor)}-{int(pos[1]/factor)}))\n")
        file.write(")\n")
        file.write(")\n")
        file.write(")\n")
