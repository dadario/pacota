require 'ferret'
include Ferret

describe Ferret do
  it "should find simple documents" do
    index = Index::Index.new(:path => "#{File.dirname(__FILE__)}/ferret_index")
    index << {:id => "@123456", :content => "testing 123, this can be indexed?"}
    index << {:id => "@456213", :content => "Another document to index. Shall we test the covering too?"}
    index << {:id => "@111111", :content => "This should not appear when searching for that word", :user => "zé"}

    result = []
    index.search_each("test*") do |id, score|
      result << index[id][:id]
    end
    result.should include("@123456")
    result.should include("@456213")
    result.should_not include("@111111")
  end
end
