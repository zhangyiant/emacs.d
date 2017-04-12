import os
import os.path
import re

rootdir = "."

for parent, dirnames, filenames in os.walk(rootdir):
    for filename in filenames:
        c = re.match(r".*elc$", filename)
        if c is not None:
            print(parent + "\\" + filename)
            os.remove(parent + "\\" + filename)
