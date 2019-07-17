module Snippets
    class Entry

        attr_reader :user, :date, :body

        def initialize(params = {})
            @user = params[:user]
            @date = params[:date]
            @body = params[:body]
        end

        def user
            @user
        end

        def date
            date = +@date
            date.gsub!(/-/, '')
            date.to_i
        end

        def body
            @body
        end

        def save(params = {})
            storage = Storage.new(self)
            storage.save
        end

    end
end
