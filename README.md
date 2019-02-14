# Steps to reproduce

1. Run `vagrant up` from an Admin prompt.

2. Open `sub/CMakeLists.txt` as a Visual Studio CMake project and add the remote connection:

```
Host: localhost
Port: 2222
User: vagrant
Password: vagrant
```

The Output window will show CMake cache generation repeatedly failing with
the message `CMake generation canceled.` or it will complete but then hang after 
the message `Target info extraction done.`. The CMake menu items will never become 
available.

# Steps to fix

Switch to the fix branch and re-open the project in Visual Studio. This branch has
a `.gitignore` file in the `sub` folder.

```
git checkout fix

# Remove the .vs and build folder.
cd sub
git clean -xdf
```

CMake generation completes successfully and the CMake menu items are available.