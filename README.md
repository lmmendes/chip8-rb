# Chip8

This is a work in progress.

CHIP-8 is an interpreted programming language, developed by Joseph Weisbecker. It was initially used on the COSMAC VIP and Telmac 1800 8-bit microcomputers in the mid-1970s. CHIP-8 programs are run on a CHIP-8 virtual machine. It was made to allow video games to be more easily programmed for said computers.

## Installation

```bash
$ gem  install chip8
```

## Usage

```bash
$ chip8 game.rom
```

## Troubleshooting

chip8-rb depends on [gosu](https://github.com/gosu/gosu) with [SDL 2](http://www.libsdl.org/) library if you see this error:

```
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
```

Follow the Gosu instructions instructions in order to understand how to install `gosu` and it's dependencies like `sdl`:

[Installation instructions for macOS](https://github.com/gosu/gosu/wiki/Getting-Started-on-OS-X) | [Installation instructions for Linux](https://github.com/gosu/gosu/wiki/Getting-Started-on-Linux)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lmmendes/chip8-rb.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
