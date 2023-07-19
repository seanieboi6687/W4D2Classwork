require_relative "piece"
require_relative "slideable"
class Rook <  piece
    include Slideable
    def symbol
        ‘♖’.colorize(color)
    end
    protected
    def move_dirs
        horizontal_and_vertical_dirs
    end
end