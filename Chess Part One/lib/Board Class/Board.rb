
require 'byebug'
class Board 

    attr_accessor :grid
        def initialize()
            
            @grid=Array.new(8){Array.new(8).fill(:NULL)}
            self.fillup
        end

        def [](pos)
            x,y = pos
            return @grid[pos[0]][pos[1]]
            # return @grid[x][y]
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
            @grid[0].fill(:somepiece)
            @grid[1].fill(:PAWNS)
            @grid[7].fill(:somepiece)
            @grid[6].fill(:PAWNS)
        end
end