require 'tdd'

describe Array
  let(:array) { [1,1,2,3,3,3,4,5]}

  describe "#my_uniq" do
      it "should deleted dups from array" do 
        expect(array.my_uniq).to eq([1,2,3,4,5])
      end
  end

end 