module Slideable

    def moves
        all_possible_moves = []
        HORIZONTAL_DIRS.each do |move|
            possible_moves = grow_unblocked_moves_in_dir(move[0],move[1])
            all_possible_moves + possible_moves
        end
    end
    





    private
    HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
    DIAGONAL_DIRS = [[]]

end



