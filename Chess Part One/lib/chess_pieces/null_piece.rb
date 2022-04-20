require 'singleton'
require_relative  'piece'
require_relative  'queen'

class NullPiece < Piece

    include Singleton

    def initialize
        super(:NULL,nil,nil)
        # super
    end

    def moves
        return []
    end

    def empty?
        return true
    end
    
    def symbol
        return "_"
    end

end