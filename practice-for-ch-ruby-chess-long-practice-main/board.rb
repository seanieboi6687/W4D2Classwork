require_relative 'piece'
require_relative 'null_piece'

class Board 
    attr_accessor :board
    def initialize
        @board = Array.new(8) { Array.new(8)}

        self.create
    end


    def create
        @board.each_with_index do |row, idx|
            if idx >=0 && idx < 2 || idx > 5 && idx <= 7
                row.each_with_index do |spot, idx2|
                    @board[idx][idx2] = Piece.new('piece')
                end
            else
                row.each_with_index do |spot, idx2|
                    @board[idx][idx2] = NullPiece.new('nullpiece')
                end
            end
        end
    end


    def print

        @board.each do |row| 
            puts row
        end
    end



end