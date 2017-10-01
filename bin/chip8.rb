#!/usr/bin/env ruby

require "bundler/setup"
require "chip8"
require "optparse"

options = {}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: chip8 file.rom [options]"
  opts.on("-d", "--dump", "Run verbosely") do
    options[:dump] = true
  end
end

optparse.parse!

filename = ARGV.pop

if !filename
  puts optparse
  exit
end

if options[:dump]
  Chip8::Dump.new(filename).dump
  exit
end
