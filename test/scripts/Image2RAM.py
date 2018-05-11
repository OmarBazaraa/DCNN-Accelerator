import numpy as np
from PIL import Image

# Read image
img = Image.open('data/github.png');
data = np.asarray(img, dtype="int32");
newData = data[:,:,0];
newData = newData.reshape(256*256);

# Read filter
filterMat = np.loadtxt("data/filter.txt", dtype='i', delimiter=' ');

with open("data/RAM_DATA.mem", "w") as f:
    f.write("// memory data file (do not edit the following line - required for mem load use)" + '\n')
    f.write("// instance=/main/RAM/Mem" + '\n')
    f.write("// format=mti addressradix=d dataradix=d version=1.0 wordsperline=1" + '\n')

    # Input Image
    size = 0;
    while size < 256*256:
        f.write(" " * (6 - len(str(size))) + str(size) + ": " + str(newData[size]) + '\n');
        size += 1;

    # Output Image
    size = 0;
    while size < 256*256:
        f.write(" " * (6 - len(str(size+256*256))) + str(size+256*256) + ": 0" + '\n');
        size += 1;

    # Filter
    size = 0;
    for i in range(0, 8):
        for j in range(0, 8):
            f.write(" " * (6 - len(str(size+256*256*2))) + str(size+256*256*2) + ": " + str(filterMat[i][j]) + '\n');
            size += 1;