$:.unshift File.join(File.dirname(__FILE__), '../lib')

require 'snippets'

RSpec.describe Snippets, "#valid" do
    context "with valid user, date, and body" do
        it "store snippet" do
            snippet = Snippets::Entry.new(
                :user   => 'testing',
                :date   => '2015-08-01',
                :body   => 'i did a thing'
            )
            snippet.save
        end
    end
end
