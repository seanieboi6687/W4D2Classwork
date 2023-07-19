require_relative 'piece'
require_relative 'null_piece'

class Board 
    attr_accessor :board
    def initialize
        @board = Array.new(8) { Array.new(8, NullPiece.instance)}

        self.populate
    end


    def populate
        @board.each_with_index do |row, idx|
            if idx >=0 && idx < 2
                row.each_with_index do |spot, idx2|
                    @board[idx][idx2] = Piece.new(:black, self, [idx, idx2])
                end
            elsif idx > 5 && idx <= 7
                row.each_with_index do |spot, idx2|
                    @board[idx][idx2] = Piece.new(:white, self, [idx, idx2])
                end
            # else
            #     row.each_with_index do |spot, idx2|
            #         @board[idx][idx2] = nil
            #     end
            end
        end
    end

    def [](position)
        row, col = position
        @board[row][col]
    end

    def []=(position, value)
        row, col = position
        @board[row][col] = value
    end

    def print
        @board.each do |row| 
            puts row
        end
    end

    def move_piece(start_pos, end_pos)
        piece = self[start_pos]
        if piece.moves.include?(end_pos)
            if self[end_pos] == NullPiece.instance
                self[end_pos] = piece
                self[start_pos] = NullPiece.instance
                piece.pos = end_pos
            elsif self[end_pos].color != piece.color
                self[end_pos] = piece
                self[start_pos] = NullPiece.instance
                piece.pos = end_pos
            else
                raise "Cannot move to the position! The position is taken by an ally unit."
            end
            
        end
        # row1, col1 = start_pos
        # row2, col2 = end_pos
        # if @board[row1][col1] == nil
        #     raise "No piece at this start position"
        # elsif @board[row2][col2] != nil || row2 < 0 || row2 > 7 || col2 < 0 || col2 > 7
        #     raise "position invalid/taken"
        # else
        #     # @board[row1][col1], @board[row2][col2] = @board[row2][col2], @board[row1][col1]
        # end
    end

end