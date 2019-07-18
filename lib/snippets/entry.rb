module Snippets
    #
    # a snippet
    #
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

        def body
            @body
        end

        def save
            storage = Storage.new(self)
            storage.save
        end
    end
end
