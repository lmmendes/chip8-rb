module Chip8
    class CPU
        def initialize
            @pc = 0x200
            @v = Array.new(0x10, 0x0)
            @stack = []
            @i = 0x0
            @halt = false
            @dt = 0x0
            @st = 0x0
            @keyboard = []
            @vram = {x: 0, y: 0, sprite: Array.new(0xF, 0x0)}
        end

        def halt?
            @halt
        end

        def run
            cycle while !halt?
        end

        private

        def cycle
            fetch
            decode
            execute
        end

        def[](address)
            @v[address]
        end

        def[]=(address, value)
            @v[address]=value
        end
    end
end
