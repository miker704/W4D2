require './modules/stepable.rb'
require 'piece'


class Knight < Piece

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
        return :KN

    end

    private
    def move_into_check?(end_pos)

    end
    def move_diff()
      KNIGHT_MOVES = [[2,1], [1,2], [-1,2], [-2,1] ,[-2,-1] ,[-1,-2 ],[1,-2], [2,-1]]
        return KNIGHT_MOVES
    end

end