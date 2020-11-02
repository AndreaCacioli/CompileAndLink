#!/usr/bin/env zsh
gcc -c ./*.c
EXECUTABLE=$1
LIBNAME=$2
for f in *.o
  do
  if [ "$f" != "${EXECUTABLE}.o" ]
  then
  echo "Adding $f to lib${LIBNAME}.a"
  ar r lib${LIBNAME}.a $f
  fi
  done
ranlib lib${LIBNAME}.a
cc ${EXECUTABLE}.o -L. -l${LIBNAME} -o ${EXECUTABLE}
echo Now you are ready to launch the Program!
