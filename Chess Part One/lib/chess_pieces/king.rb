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
        valid=[]
        self.moves.each do |pos|
            x,y = pos
            # if
        end
        

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
    def move_diff()
        KING_MOVES=[[1,0], [-1,0],[0,1], [0,-1],[1,1], [1,-1], [-1,1], [-1,-1]]
        return KING_MOVES
    end

    
end