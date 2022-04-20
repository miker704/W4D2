

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