module Snippets
    #
    # date utility
    #
    class Date
        attr_reader :date

        def initialize(date)
            @date = date
        end

        def normalize
            #
            # we're expecting ISO 8601 date (YYYY-MM-DD) but storing
            # it internally as an integer to simplify searching...
            #
            date = +self.date
            date.gsub!(/-/, '')
            date.to_i
        end
    end
end
