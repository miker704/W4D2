require_relative "display.rb"
require_relative "cursor.rb"
require "../board_class/board.rb"
require "../player_class/player.rb"
require "../player_class/human_player.rb"
require "../player_class/computer_player.rb"
require "../chess_pieces/modules/slideable.rb"
require "../chess_pieces/modules/stepable.rb"




class Game

    def initialize
        @board= Board.new
        @display= Display.new(@board)

        @player1=HumanPlayer.new(:B,@display)
        @player2= ComputerPlayer.new(:W,@display)
       # @players={}
        @current_player=@player1

    end

    def play

    end

    private

    def swap_turn!
         return  @current_player==@player1 ? @current_player=@player2 : @current_player=@player1 
    end

    def notify_players

    end

end