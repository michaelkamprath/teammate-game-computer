# Custom T.E.A.M.M.A.T.E. Software
This directory contains custom software for the T.E.A.M.M.A.T.E. Game Computer in assembly code form. The software can be compiled using the [**BespokeASM** customizable assembler](https://github.com/michaelkamprath/bespokeasm). **BespokeASM** includes a configuration for compiling MOSTEK 3870 assembly code, which can be found in [the examples directory](https://github.com/michaelkamprath/bespokeasm/tree/main/examples/mostek-3870). 

To compile a program in this directory, [install **BespokeASM**](https://github.com/michaelkamprath/bespokeasm/wiki/Installation-and-Usage), and then use the following command:

```sh
bespokeasm compile -e 2047 -c /path/to/bespokeasm/examples/mostek-3870/mostek-3870.yaml -I kernel/ sample-code.af8
```

Note the addition of the include directory `kernel/`, which is found in this directory. The `kernel/` directory contains the base code that provides a minimal kernel for the T.E.A.M.M.A.T.E. Game Computer.

## T.E.A.M.M.A.T.E. Kernel
The `kernel/` directory contains the base code that provides a minimal kernel for the T.E.A.M.M.A.T.E. Game Computer. The kernel manages the display multiplexing, keyboard scanning (TBC), and sound generation (TBC). To use this kernel in your program, you need to do two things in your code:

1. Include the `kernel.af8` file in your application's code. Do this with:
    ```
    #include "kernel.af8"
    ```
2. Set you code entry point to be the first instruction of the `program_zone` memory zone (declared in `kernel.af8`). Do this with:
    ```asm
    .memzone program_zone
    ```
    

### Display Handler

### Keyboard Scanning

### Sound Generation
