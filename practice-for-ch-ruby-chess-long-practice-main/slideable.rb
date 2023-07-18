module Slideable







    private


arr_hor = Array.new(14)
arr_ver = Array.new(14)
idx = 0
while idx < arr_hor.length
    (-7..7).each do |i|
        arr_hor[idx] = [0, i]
        idx += 1
    end
end

idx = 0
while idx < arr_hor.length
    (-7..7).each do |i|
        arr_ver[idx] = [i, 0]
        idx += 1
    end
end

HORIZONTAL_DIRS = arr_hor + arr_ver
# DIAGONAL_DIRS = []


end



