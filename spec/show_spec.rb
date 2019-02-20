describe "Show" do

  let(:friends) { Show.new("Friends") }

  describe "#initialize" do
    it "can initialize a Show" do
      expect(friends).to be_a(Show)
    end

    it "initializes with a name" do
      expect(friends.name).to eq("Friends")
    end

    it "can't change its name" do
      expect { friends.name = "Not Friends" }.to raise_error
    end

    it "is saved on initialization" do
      expect(Show.all).to include(friends)
    end

     it "is initialized with an empty array to store all of it's episodes" do
      expect(friends.episodes).to eq([])
    end

  end

  # describe "#num_of_episodes" do
  #     it "can have a num_of_episodes" do
  #       friends.num_of_episodes = 2
  #       expect(friends.num_of_episodes).to eq("10-9-2003")
  #     end
  # end

  describe '#episodes' do
    it "can belong to a show" do
      friends = Show.new("Friends")
      ross_tan.show = friends
      expect(ross_tan.show).to be_a(Show)
    end
  end

   describe '#show=' do
    #You will need to complete the Show tests before tackling this one
    it "will also add the episode to the show's array of episodes" do
      the_office = Show.new("The Office")
      stairmaggedon = Episode.new("Stairmaggedon")
      stairmaggedon.show = the_office
      expect(the_office.episodes).to include(stairmaggedon)
    end
  end

end