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

  end


  describe '#episodes' do
    it "is initialized with an empty array to store all of it's episodes" do
      expect(friends.episodes).to eq([])
    end

    it "has many episodes" do
      episode = Episode.new("The One With Rachel's Sister")
      friends.episodes << episode

      expect(friends.episodes).to include(episode)
    end
  end

  describe '#add_episode' do
    it "it accepts an episode as an argument and adds it to the episodes array " do
      episode = Episode.new("The One With the Cop")
      friends.add_episodes(episode)
      expect(friends.episodes).to include(episode)
    end

    it "assigns the episode's show to be itself" do
      episode = Episode.new("The One With the Cop")
      friends.add_episodes(episode)
      expect(episode.show).to eq(friends)
    end

    it "doesn't add the same episode twice" do
      friends.episodes = []
      episode = Episode.new("The One With the Cop")
      other_episode = Episode.new("The One With the Yeti")
      friends.add_episodes(episode)
      friends.add_episodes(episode)
      friends.add_episodes(other_episode)
      expect(friends.episodes.length).to eq(2)
    end
  end

    describe "#num_of_episodes" do
      it "returns the number of episodes added to the #episodes array" do
        friends.episodes = []
        episode = Episode.new("The One With the Cop")
        other_episode = Episode.new("The One With the Yeti")
        another_episode = Episode.new("The One Where Ross Moves In")
        friends.add_episodes(episode)
        friends.add_episodes(other_episode)
        friends.add_episodes(another_episode)
        expect(friends.num_of_episodes).to eq(3)
      end
  end



end