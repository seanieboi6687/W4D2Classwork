class Pawn < Piece

    def symbol
        '♙'.colorize(color)
    end


    def moves
        PAWN_MOVES = [
            [0,1],
            [0,-1],
            [1,0],
            [-1,0],
            [-1,-1],
            [-1,1],
            [1,1],
            [1,-1]
        ].freeze
    end


    private

    def at_start_row?
    end


    def forward_dir
    end


    def forward_steps
    end


    def side_attacks
    end

    

end