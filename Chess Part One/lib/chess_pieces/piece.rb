require 'byebug'
require '../board_class/board.rb'

class Piece
    
    attr_writer :pos
    attr_reader :color
    def initialize(color,board,pos)
        @color=color
        @board=board
        @pos=pos
    end

    def moves()

    end

    def to_s()

    end

    def empty?
            return true if 
    end
    
    def valid_moves()

    end

    def pos=(val)

    end

    def Symbol

    end

    private
    def move_into_check?(end_pos)

    end

end