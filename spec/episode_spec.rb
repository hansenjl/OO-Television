describe "Episode" do

  let(:ross_tan) { Episode.new("The One With Ross's Tan") }

  describe "#initialize" do
    it "can initialize an Episode" do
      expect(ross_tan).to be_a(Episode)
    end

    it "initializes with a title" do
      expect(ross_tan.title).to eq("The One With Ross's Tan")
    end

    it "is saved on initialization" do
      expect(Episode.all).to include(ross_tan)
    end

  end

  describe "#air_date" do
      it "can have an air date" do
        ross_tan.air_date = "10-9-2003"
        expect(ross_tan.air_date).to eq("10-9-2003")
      end
  end

  describe '#show' do
    it "an episode can belong to a show" do
      friends = Show.new("Friends")
      ross_tan.show = friends
      expect(ross_tan.show).to be_a(Show)
    end
  end

   describe '#show=' do
    #You will need to complete the Show tests before tackling this one
    it "accepts an argument of a show object and set's the episode's show attribute" do
      the_office = Show.new("The Office")
      stairmaggedon = Episode.new("Stairmaggedon")
      stairmaggedon.show = the_office
      expect(stairmaggedon.show).to eq(the_office)
    end

    it "will also add the episode to the show's array of episodes" do
      the_office = Show.new("The Office")
      stairmaggedon = Episode.new("Stairmaggedon")
      stairmaggedon.show = the_office
      expect(the_office.episodes).to include(stairmaggedon)
    end
  end

end