
module Stepable
    def moves()
        curr_x,curr_y = self.pos
        valid_moves = []
        self.mov_dirs.each do |pos|
                
          valid_moves << [pos[0] +curr_x], pos[1] + curr_y]
        end
        return valid_moves
    end

    private
    
    def move_diff()
        raise NotImplementedError
    end
end