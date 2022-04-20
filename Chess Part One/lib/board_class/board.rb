
require 'byebug'
require '../chess_pieces/null_piece.rb'
class Board 

    attr_accessor :grid
        def initialize()
            

            
            null_piece = NullPiece.instance
            @grid=Array.new(8){Array.new(8).fill(null_piece.symbol)}
            self.fillup
            # @grid.each{|row| puts row.join("|")}
        end

        def [](pos)
            x,y = pos
            return @grid[x][y]
        end

        def []=(pos,value)
            x,y = pos
            @grid[x][y]=value
        end

        def move_piece(start_pos,end_pos)
            # condition 1
        
            raise "No piece at pos #{start_pos}" if self[start_pos] == :NULL || !(0..7).to_a.include?(start_pos[0]) || !(0..7).to_a.include?(start_pos[1])
            # conditon 2
            raise "This Piece cannot move to pos #{end_pos}" if !(0..7).to_a.include?(end_pos[0]) || !(0..7).to_a.include?(end_pos[1])

            self[end_pos]=self[start_pos]
            self[start_pos]=:NULL
        end

        def fillup
            @grid[0].fill(:SP_W)
            @grid[1].fill(:PA_W)
            @grid[7].fill(:SP_B)
            @grid[6].fill(:PA_B)
        end
end