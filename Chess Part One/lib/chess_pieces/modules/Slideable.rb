
module Slideable
    attr_reader :horizontal_dirs ,:diagonal_dirs
    def horizontal_dirs
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs
        return DIAGONAL_DIRS
    end



    def moves()
            # 
            
    end
    
    
    # CONSTANT directions for a said piece
    
    private
        HORIZONTAL_DIRS=[]
        DIAGONAL_DIRS=[]
        # VERTICAL_DIRS=[]

        def mov_dirs
            raise NotImplementedError

        end
        #nice function name
        def grow_unblocked_moves_in_dir(x,y)

        end

end
