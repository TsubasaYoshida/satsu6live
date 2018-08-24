class GameInfo < ApplicationRecord
    def get_sum_top
        sum_top = 0
        15.times { |n| 
          str_top = "top" << (n+1).to_s
          sum_top += self[str_top].to_i
        }
        return sum_top
    end

    def get_sum_bottom
        sum_bottom = 0
        15.times { |n| 
          str_bottom = "bottom" << (n+1).to_s
          sum_bottom += self[str_bottom].to_i
        }
        return sum_bottom
    end

    def get_x_index(sum_top,sum_bottom)
        x = ""
        if (self[:bottom9].to_i > 0 || self[:bottom10].to_i > 0 || self[:bottom11].to_i > 0 || self[:bottom12].to_i > 0) && self[:updatable] && sum_bottom > sum_top
            x = "x"
        elsif ((self[:bottom7].to_i > 0 && !self[:top8]) || (self[:bottom8].to_i > 0 && !self[:top9])) && self[:updatable]
            x = "x"
        end
        return x
    end

    def get_gameset_msg
        gameset_msg = "（試合中）"
        if self[:updatable]
            gameset_msg = "（試合終了）"
        end
        return gameset_msg
    end
end
