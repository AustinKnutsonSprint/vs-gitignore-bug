Steps to reproduce:

Run 'vagrant up' from an Admin prompt.

Add the remote connection to Visual Studio and open sub/CMakeLists.txt.

The Output window will show CMake cache generation repeatedly failing with
the message 'CMake generation canceled.' or it will hang after the message
'Target info extraction done.'. The CMake menu items will never become available.
