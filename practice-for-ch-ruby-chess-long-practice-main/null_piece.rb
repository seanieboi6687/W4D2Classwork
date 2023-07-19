require 'singleton'
class NullPiece 
    include Singleton

    def initialize
        @name = ""
        @color = :none
    end

    def empty?
        true
    end

    def symbol
        nil
    end

end