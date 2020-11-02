# CompileAndLink



A zsh script to allow you to link all the library files into one .a file and link it to the main executable file.
  - Make sure zsh and gcc are installed
  - Make it Executable
  - Download the file and move it to the working directory
  - Type ./CompileAndLink.zsh
  - Specify Executable name
  - Secify library name (Without lib prefix)



```sh
$ cd path/to/executables/and/library/files
$ chmod +x ./CompileAndLink.zsh
$ ./CompileAndLink.zsh MyExecutable MyLibrary
Adding file1.o to libMyLibrary.a
Adding file2.o to libMyLibrary.a
...
Now you are ready to launch the Program!
./MyExecutable
```
