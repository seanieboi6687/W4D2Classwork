module Slideable

    def moves
        moves = []

        move_dirs.each do |dx, dy|
            moves.concat(grow_unblocked_moves_in_dir(dx, dy))
        end

        moves
    end

    def horizontal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    private
    
    HORIZONTAL_AND_VERTICAL_DIRS = [
        [-1, 0],
        [0, -1],
        [0, 1],
        [1, 0]
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1],
        [-1, 1],
        [1, -1],
        [1, 1]
    ].freeze


    def grow_unblocked_moves_in_dir(dx, dy)
        cur_x, cur_y = pos
        moves = []
        loop do
        cur_x, cur_y = cur_x + dx, cur_y + dy
        pos = [cur_x, cur_y]

        break unless board.valid_pos?(pos)

        if board.empty?(pos)
            moves << pos
        else
            # can take an opponent's piece
            moves << pos if board[pos].color != color

            # can't move past blocking piece
            break
        end
        end
        moves
    end

end



# arr_hor = Array.new(14)
# arr_ver = Array.new(14)
# idx = 0
# while idx < arr_hor.length
#     (-7..7).each do |i|
#         arr_hor[idx] = [0, i]
#         idx += 1
#     end
# end

# idx = 0
# while idx < arr_hor.length
#     (-7..7).each do |i|
#         arr_ver[idx] = [i, 0]
#         idx += 1
#     end
# end