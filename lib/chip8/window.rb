require 'gosu'

module Chip8
  class Window < Gosu::Window

    def initialize(width=640, height=480, options = {})
      super(width, height, options)
    end

    # This method is called before #update if a button is pressed
    # while the window has focus.
    def button_down(id)
    end

    # This method is called before #update if a button is released
    # while the window has focus.
    def button_up(id)
    end

  end
end
