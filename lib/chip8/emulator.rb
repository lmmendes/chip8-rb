module Chip8
    class Emulator
        attr_reader :rom
        def initialize(rom_path)
          # @rom = File.open(rom_path).read.unpack('C*')
          @rom = Rom.new(rom_path)
        end
    end
end
