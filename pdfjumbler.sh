#!/bin/sh

LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/app/lib/
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/app/jre/lib/
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib

VM_ARGS="-Xms512m -Xmx2048m"

cd /app/pdfjumbler
export LD_LIBRARY_PATH

# If graphical problems occur, it may need to add -Dsun.java2d.opengl=true and/or -Dsun.java2d.noddraw=true
${JAVA} ${VM_ARGS} -Dfile.encoding=UTF-8 -Djava.library.path="${LD_LIBRARY_PATH}" -jar pdfjumbler.jar "${@}"
