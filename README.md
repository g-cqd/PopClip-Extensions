# PopClip Extensions

This is just a simple repository to create and build simple extensions for PopClip.

No "complex" build system.
Only a `bash` script to build a specified extension or every extensions in the `src` directory.


## Usage

1. Create a new directory `<extensions_name>` in `src` without any extension suffix.
2. Do whatever you want in this directory.
3. Run `bash build.sh <extension_name>` to build the extension.
4. You will find the extension compressed and named as `<extension_name>.popclipextz` in `build` directory.
5. You can now open the extension in PopClip.
