require_relative "game.rb"
# require "../board_class/board.rb"


class Display

        def initialize(board)
            @board=board
            @cursor=Cursor.new(cursor_pos,board)

        end
        # print board to screen
        def render
            
        end
end