require 'byebug'
require '../board_class/board.rb'

class Piece
    
    attr_writer :pos
    attr_reader :color
    def initialize(color =:NULL,board=nil,pos=nil)
        @color=color
        @board=board
        @pos=pos
    end

    # def moves()


    # end

    def to_s()

    end

    def empty?
            return false
    end
    
    def valid_moves()
        # self.moves.reject do |position|
        #     if !(0..7).to_a.include?(position[0]) || !(0..7).to_a.include?(position[1])
        # end

        # if piece is empty check to for piece color if the color is the same stop
        # if not stop at that pos on opp color piece
        valid_moves_arr=[]
        self.moves.each do |direction|
            direction.each_with_index |pos, i|
                if !board.[pos].empty?
                    if self.color != board.[pos].color 
                        valid_moves_arr += direction[0..i]
                        break
                    elsif self.color == board.[pos].color 
                         valid_moves_arr += direction[0...i]
                        break
                    end
                    valid_moves_arr += direction
                end
            end
        end
        valid_moves_arr
        


           
        #         valid_moves_arr<<position
        #     elsif board[position].color != self.color
        #          valid_moves_arr<<position   
        # end


    end

    def pos=(val)

    end
    # check if symbol has changed or not 
    def Symbol

    end

    private
    def move_into_check?(end_pos)

    end

end