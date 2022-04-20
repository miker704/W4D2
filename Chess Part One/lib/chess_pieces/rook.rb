
require './modules/slideable.rb'
require "piece"


class Rook < Piece

    include Slideable

  
    def initialize(color,board,pos)
        super(color,board,pos)
    
    end

    def moves()

    end

    def to_s()

    end

#    valid moves
    def valid_moves()
        # if next move  7 >= x >=0 the same for y 
         

    end

    def pos=(val)

    end
    # check if symbol has changed or not 
    def Symbol
        return :R

    end

    private

    def self.mov_dirs
        self.horizontal_dirs

    end

    def move_into_check?(end_pos)

    end



end