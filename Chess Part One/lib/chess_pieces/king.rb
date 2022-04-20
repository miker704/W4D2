require './modules/stepable.rb'
require 'piece'

class King < Piece

    include Stepable

    def initialize(color,board,pos)
        super()
    
    end

    def moves()

    end

    def to_s()

    end

   
    def valid_moves()
        

    end

    def pos=(val)

    end
    # check if symbol has changed or not 
    def Symbol
        return :K!

    end

    private
    def move_into_check?(end_pos)

    end

end