import sys
import cv2
import cPickle as pickle
import numpy as np
import localcrop

cdata = pickle.load(open("calibrate.pkl", "rb"))
fullx = cdata['mapx']
fully = cdata['mapy']

# make sure parameters here match with show.py !
(x, y, w, h, yoffset) = localcrop.params()

scaledown = 3

mapx = fullx[y+h/2+yoffset:y+h+yoffset,x:x+w]
mapy = fully[y+h/2+yoffset:y+h+yoffset,x:x+w]

with open('table.h', 'wb') as hfile:
    hfile.write("#if !defined(table_h)\n")
    hfile.write("#define table_h\n")
    hfile.write("\n")
    hfile.write("/* generated by maketable.py */\n")
    hfile.write("\n")
    hfile.write("#define SOURCE_WIDTH 640\n")
    hfile.write("#define SOURCE_HEIGHT 480\n")
    hfile.write("#define INPUT_LEFT %d\n" % (x,))
    hfile.write("#define INPUT_TOP %d\n" % (y+int(h/2),))
    hfile.write("#define INPUT_WIDTH %d\n" % (w,))
    hfile.write("#define INPUT_HEIGHT %d\n" % (int(h/2),))
    RECTIFIED_WIDTH = int(w/scaledown)
    hfile.write("#define RECTIFIED_WIDTH %d\n" % (RECTIFIED_WIDTH,))
    RECTIFIED_HEIGHT = int(h/(2*scaledown))
    hfile.write("#define RECTIFIED_HEIGHT %d\n" % (RECTIFIED_HEIGHT,))
    hfile.write("\n")
    hfile.write("typedef struct TableInputCoord {\n")
    hfile.write("  float sy;\n")
    hfile.write("  float sx;\n")
    hfile.write("} TableInputCoord;\n");
    hfile.write("\n")
    hfile.write("/* total table size %d elements %d bytes */\n" %
            (RECTIFIED_WIDTH*RECTIFIED_HEIGHT, RECTIFIED_WIDTH*RECTIFIED_HEIGHT*8))
    hfile.write("extern TableInputCoord const sTableInputCoords[RECTIFIED_HEIGHT][RECTIFIED_WIDTH];\n")
    hfile.write("\n")
    hfile.write("#endif\n")

with open('table.cpp', 'wb') as cppfile:
    cppfile.write("/* generated by maketable.py */\n")
    cppfile.write("\n")
    cppfile.write("#include \"table.h\"\n")
    cppfile.write("\n")
    cppfile.write("/* %d Y rows, %d X columns */\n" % (int(len(mapx)/scaledown), int(len(mapx[0])/scaledown)))
    cppfile.write("\n")
    cppfile.write("TableInputCoord const sTableInputCoords[RECTIFIED_HEIGHT][RECTIFIED_WIDTH] = {\n")
    ylimit = len(mapx)-(len(mapx) % scaledown)
    xlimit = len(mapx[0])-(len(mapx[0]) % scaledown)
    for yy in range(0, ylimit, scaledown):
        n = 0
        cppfile.write("/* row %d */ { " % (yy/scaledown,))
        for xx in range(0, xlimit, scaledown):
            if n == 10:
                cppfile.write("\n   ")
                n = 0
            xv = 0.0
            yv = 0.0
            for dy in range(0, scaledown):
                for dx in range(0, scaledown):
                    xv += mapx[yy+dy][xx+dx]
                    yv += mapy[yy+dy][xx+dx]
            xval = float(xv) / (scaledown * scaledown)
            yval = float(yv) / (scaledown * scaledown)
            cppfile.write("{ %.2f, %.2f }, " % (yval, xval))
            n += 1
        cppfile.write("}, /* end row %d */\n" % (yy/scaledown,))
    cppfile.write("};\n")

