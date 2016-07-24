require_relative "../orange"
require_relative "../orange_tree"


describe OrangeTree do
  let(:tree) { OrangeTree.new }

  #You'll need to switch `pending` to `describe` when you're ready
  # to implement each set of tests.

  describe "#age" do
    
    it "has an age of 0 when new" do
      expect(tree.age).to eq 0
    end
  end

  describe "#height" do
    it "has a height" do
      expect(tree.height).to eq 0
    end
  end


  describe "#pass_growing_season" do
    it "should change the age" do
      # This should be more explicit. How much should the tree age by?
      # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect {tree.pass_growing_season}.to change {tree.age}
    end

    it "should make the tree grow" do
      #This should be more explicit. How much should the tree grow?
      expect {tree.pass_growing_season}.to change{tree.height}
    end

    context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce oranges" do
      end
    end
  end

  describe "#mature?" do
    it "returns true if tree is old enough to bear fruit" do
    end

    it "returns false if tree is not old enough to bear fruit" do
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
    end

    it "should return true for a dead tree" do
    end
  end

  describe '#has_oranges?' do
    it 'should return true if oranges are on the tree' do
    end

    it "should return false if the tree has no oranges" do
    end
  end

  describe "#pick_an_orange" do
    it "should return an orange from the tree" do
    end

    it "the returned orange should no longer be on the tree" do
    end

    it "should raise an error if the tree has no oranges" do
    end
  end
end
