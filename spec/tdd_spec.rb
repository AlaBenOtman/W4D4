require 'tdd'

describe Array do
  let(:array_1) { [1,1,2,3,3,3,4,5] }
  let(:array_2) { [] }
  let(:array_3) { [-1, 0, 2, -2, -2] }

  describe "#my_uniq" do
      it "should deleted dups from array" do 
        expect(array_1.my_uniq).to eq([1,2,3,4,5])
      end
     
      before(:each) do
         expect_any_instance_of(Array).not_to receive(:uniq)
      end
      
      it "should return [] if array is empty" do 
        expect(array_2.my_uniq).to eq([])
      end
      it "should not mutate original array" do
        expect(array_1.my_uniq).not_to be(array_1)
      end

  end

  describe "#two_sum" do

    it "should return pairs of positions that sum to zero" do
      expect(array_3.two_sum).to eq([[2, 3]])
    end

    
  end

end 


