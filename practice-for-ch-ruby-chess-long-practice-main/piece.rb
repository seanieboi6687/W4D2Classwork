
class Piece
attr_reader :name
    def initialize(symbol, board, position)
        raise "invalid color" unless ["white","black"].include?(symbol)
        raise "invalid pos" unless board.valid_pos?(position)
        @color = symbol
        @board = board
        @pos = position
        @board.add_piece(self, pos)
    end

    def to_s

    end

    def empty?
        false
    end

    def valid_moves

    end

    def pos=(val)

    end

    def symbol

    end

    private
    def move_into_check?(end_pos)
        
    end
end