
module Slideable
    attr_reader :horizontal_dirs ,:diagonal_dirs
    def horizontal_dirs
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs
        return DIAGONAL_DIRS
    end



    def moves
        curr_x,curr_y = self.pos
        move_set=[]

        if self.mov_dirs==HORIZONTAL_DIRS
            directions=HORIZONTAL_DIRS

        elsif self.mov_dirs==DIAGONAL_DIRS
            directions=DIAGONAL_DIRS
        else  #queen 
            directions=HORIZONTAL_DIRS+DIAGONAL_DIRS
        end

        directions.each do |direction|
            moveset << [direction[0] +curr_x], direction[1] + curr_y]
            while (0..7).to_a.include?(moveset.last[0]) && (0..7).to_a.include?(moveset.last[1]) 
                 moveset << [direction[0] +moveset.last[0]], direction[1] + moveset.last[1]]

             end
            
        end
        
        moveset.reject! do |position|
             !(0..7).to_a.include?(position[0]) || !(0..7).to_a.include?(position[1])
        end

        
    end
    
    
    # CONSTANT directions for a said piece
    
    private
        HORIZONTAL_DIRS=[[1,0], [-1,0],[0,1], [0,-1]].freeze
        DIAGONAL_DIRS=[[1,1], [1,-1], [-1,1], [-1,-1]].freeze
      

        def mov_dirs
            raise NotImplementedError

        end
        #nice function name
        def grow_unblocked_moves_in_dir(x,y) 

        end

end
