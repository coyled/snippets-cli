require 'aws-sdk-dynamodb'
require 'uuidtools'

module Snippets
    #
    # interact with snippet storage
    #
    class Storage
        def initialize(snippet)
            @user = snippet.user
            @date = snippet.date
            @body = snippet.body

            aws_region              = ENV['AWS_REGION']
            aws_access_key_id       = ENV['AWS_ACCESS_KEY_ID']
            aws_secret_access_key   = ENV['AWS_SECRET_ACCESS_KEY']

            Aws.config.update({
                region:         aws_region,
                credentials:    Aws::Credentials.new(aws_access_key_id, aws_secret_access_key)
            })

            @dynamodb = Aws::DynamoDB::Client.new()
        end

        def save()
            snippet_id = UUIDTools::UUID.random_create.to_s
            date = Snippets::Date.new(@date).normalize
            snippets_table_name = ENV['SNIPPETS_TABLE_NAME'] || 'snippets'

            @dynamodb.put_item({
                table_name: snippets_table_name,
                item: {
                    'snippet_id'    => snippet_id,
                    'user'          => @user,
                    'snippet_date'  => date,
                    'body'          => @body,
                    'created_at'    => Time.now.to_i
                }
            })
        end
    end
end
