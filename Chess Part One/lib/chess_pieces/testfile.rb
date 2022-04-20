    # def moves
    #     curr_x,curr_y = [3,3]
    #     moveset=[]

    #     # if self.mov_dirs==HORIZONTAL_DIRS
    #     #     directions=HORIZONTAL_DIRS

    #     # elsif self.mov_dirs==DIAGONAL_DIRS
    #     #     directions=DIAGONAL_DIRS
    #     # else  #queen 
    #     #     directions=HORIZONTAL_DIRS+DIAGONAL_DIRS
    #     # end
    #     directions = [[1,1], [-1,1],[1,-1],[-1,-1]]

    #     directions.each do |direction|
    #         subarr=[]
    #         subarr << [direction[0] +curr_x, direction[1] + curr_y]
    #         while (0..7).to_a.include?(subarr.last[0]) && (0..7).to_a.include?(subarr.last[1]) 
    #              subarr << [direction[0] +subarrt.last[0], direction[1] + subarr.last[1]]

    #         end
    #         subarr.reject! do |position|
    #          !(0..7).to_a.include?(position[0]) || !(0..7).to_a.include?(position[1])
    #         end
    #         moveset << subarr

    #     end
    # end
    #   [[7,7]] [[5,7]]


    #     p moveset.sort()
    #     i=0
    #     new_moves=[]

    

    #     while(i<directions.length)
            
            
    #         new_x=curr_x+ directions[i][0]
    #         new_y= curr_y + directions[i][1]
    #         if new_x>=0 && new_y>=0 && new_x<=7 && new_y<=7
    #             new_moves<<[new_x,new_y]




    #         end
    #         i+=1
    #     end
    
    #     p new_moves


    # end
    # moves
def check
    valid_moves_arr =[]
    current_position = [7,1]
    directions = [
    [[5,5], [7,1], [7,5]], 
    [[3,5], "a", [1,5], [0,5]], 
    [[4,6], [4,7], "b"] ,
    [[4,4], [4,3], [4,2], "a", [4,0]]
]
    directions.each do |direction|
        if !direction.include?(current_position)
            valid_moves_arr << direction
        else
            direction.each_with_index do |pos,i|
                if current_position == pos
                    valid_moves_arr << direction[0...i]
                    break
                end
            end
        end
    end
    print valid_moves_arr
end
check