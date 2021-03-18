require 'tdd'

describe Array do
  let(:array) { [1,1,2,3,3,3,4,5] }

  describe "#my_uniq" do
      it "should deleted dups from array" do 
        expect(array.my_uniq).to eq([1,2,3,4,5])
      end

      it "#should not use built-in method #uniq" do
        expect(array.my_uniq).not_to receive(uniq)
      end

  end

end 


# disallowed_methods = [
#     :index, :find_index, :include?, :member?, :dup
#   ]

#   before(:each) do
#     disallowed_methods.each do |method|
#       expect(arr).not_to receive(method)
#     end
#     expect_any_instance_of(Array).not_to receive(:index)
#   end