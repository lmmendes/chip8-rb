module Chip8
  class Rom

    def initialize(file)
      @file = file
      @rom  = File.open(@file, "rb").read.unpack("n*")
    end

    def dump
      puts ""
      puts "File #{file} has #{rom.size} instructions."
      puts "For information about instructions see "
      puts "http://devernay.free.fr/hacks/chip8/chip8def.htm"
      puts ""
      @rom.each_with_index do |opcode, addr|
        hex = "%04X" % opcode
        puts sprintf "0x%03X: [%s] %s", 200+addr*2, hex, decode(opcode)
      end
      puts ""
    end

    # returns the
    def decode(opcode)
      o   = opcode >> 12
      kk  = opcode & 0x0FF
      nnn = opcode & 0XFFF
      x   = opcode >> 8 & 0x0F
      y   = opcode >> 4 & 0x0F
      l   = opcode & 0x0F

      case o
      when 0
        "NOP"
      when 6
        case kk
        when 0x00E0
          "CLS"
        when 0x00EE
          "RTS"
        else
          sprintf "MOV V%s, 0x%X", x, kk
        end
      when 1
        sprintf "JMP %03X", nnn
      when 2
        sprintf "JSR %03X", nnn
      when 3
        "SKEQ V#{x}, #{kk}"
      when 4
        "SKNE V#{x}, #{kk}"
      when 5
        "SKNE V#{x}, V#{y}"
      when 6
        "MOV V#{x}, V#{y}"
      when 7
        "ADD V#{x}, #{y}"
      when 8
        case l
        when 0
          "MOV V#{x}, V#{y}"
        when 1
          "OR  V#{x}, V#{y}"
        when 2
          "AND  V#{x}, V#{y}"
        when 3
          "XOR  V#{x}, V#{y}"
        when 4
          "ADD  V#{x}, V#{y}"
        when 5
          "SUB  V#{x}, V#{y}"
        when 6
          "SHR  V#{x}, V#{y}"
        when 7
          "RSB  V#{x}, V#{y}"
        when 0xE
          "SHL V#{x}"
        end
      when 9
        "SKNE V#{x}, V#{y}"
      when 0xA
        "MVI #{nnn}"
      when 0xB
        "JMI #{nnn}"
      when 0xC
        "RAND V#{x}, #{kk}"
      when 0xD
        "SPRITE V#{x}, #{kk}, #{nnn}"
      end

    end

  end
end
