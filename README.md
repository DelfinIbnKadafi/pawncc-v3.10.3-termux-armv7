# PawnCC for Termux ARMv7

Prebuilt Pawn Community Compiler for Termux on Android (ARMv7 / 32-bit ARM).
This project provides ready-to-use Pawn compiler binaries, allowing you to compile Pawn source code directly on Android without building the compiler from source.

### Requirements

- Android
- Termux
- ARMv7 / 32-bit ARM environment

#### Check your architecture:

```bash
uname -m
```

«Note: This repository is specifically for ARMv7. ARM64/AArch64 binaries are not provided.»

### Installation

#### Clone the repository:

```bash
git clone https://github.com/DelfinIbnKadafi/pawncc-v3.10.3-termux-armv7.git
cd pawncc-termux-armv7
```

#### Run the installer:

```bash
chmod +x install.sh
./install.sh
```

#### Verify the installation:

```bash
pawncc
```

If the installation was successful, "pawncc" can be used from any directory.

## Usage

Compile a Pawn source file:

```bash
pawncc gamemode.pwn
```

#### For example:

```bash
pawncc examples/hello.p
```

#### Compiler Options

Some commonly used Pawn compiler options:

```table
Option | Description
"-i"   | Specify an include directory. Useful when the ".pwn" file is outside the compiler's default include directory.
"-D"   | Specify the output directory for generated ".amx" files.
"-;+"  | Require semicolons (";") at the end of statements.
"-(+"  | Enable strict curly-brace checking.
"-d3"  | Include full debug information in the generated ".amx" file. Useful when using the crashdetect plugin.
```

##### Example

Compile a gamemode with a custom include directory, output directory, strict syntax checking, and debug information:

```bash
pawncc gamemode.pwn -i./include -D./gamemodes -;+ -(+ -d3
```

## Version

#### Based on:

Pawn Compiler 3.10.3

## Upstream

This project is based on the Pawn Community Compiler:

https://github.com/pawn-lang/compiler

For the original source code, documentation, development history, and licensing information, please refer to the upstream project.

## License

This repository distributes prebuilt binaries of the Pawn Community Compiler.

See the upstream project's license:

https://github.com/pawn-lang/compiler/blob/master/license.txt
