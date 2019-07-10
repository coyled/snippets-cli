$:.unshift File.join(File.dirname(__FILE__), '../lib')

require 'securerandom'
require 'snippets'

test_id = SecureRandom.hex(8)
test_user = 'testing'
test_date = Time.now.strftime('%Y-%m-%d')
test_body = test_date + ' test number ' + test_id

RSpec.describe Snippets, "#valid" do
    context "with valid user, date, and body" do
        it "store snippet" do
            snippet = Snippets::Entry.new(
                :user   => test_user,
                :date   => test_date,
                :body   => test_body
            )
            snippet.save
        end
    end
end
