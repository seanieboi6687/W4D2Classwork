module Stepable

    def moves 
        moves = []
        cur_x,cur_y = pos
        move_dirs.each do |dx,dy|
            poss_pos = [cur_x + dx, cur_y + dy]
            if board.valid_pos?(poss_pos)
                if board.empty?(poss_pos)
                    moves << poss_pos
                    
                else
                    moves << poss_pos if board[poss_pos].color != color
                end
            end
        end

        moves
    end
            

end