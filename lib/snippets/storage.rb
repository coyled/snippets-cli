require 'aws-sdk'
require 'uuidtools'

module Snippets
    class Storage

        def aws_region
            ENV['AWS_REGION']
        end

        def aws_access_key_id
            ENV['AWS_ACCESS_KEY_ID']
        end

        def aws_secret_access_key
            ENV['AWS_SECRET_ACCESS_KEY']
        end

        def snippets_table_name
            ENV['SNIPPETS_TABLE_NAME'] || 'snippets'
        end

        def initialize(snippet)
            @user = snippet.user
            @date = snippet.date
            @body = snippet.body

            Aws.config.update({
                region:         aws_region,
                credentials:    Aws::Credentials.new(aws_access_key_id, aws_secret_access_key)
            })

            @dynamodb = Aws::DynamoDB::Client.new()
        end

        def save()
            @snippet_id = UUIDTools::UUID.random_create.to_s

            @dynamodb.put_item({
                table_name: snippets_table_name,
                item: {
                    'snippet_id'    => @snippet_id,
                    'user'          => @user,
                    'snippet_date'  => @date,
                    'body'          => @body,
                    'created_at'    => Time.now.to_i
                }
            })
        end
    end
end
