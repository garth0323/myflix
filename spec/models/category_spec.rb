require 'spec_helper'

describe Category do
  it { should have_many(:videos)}

  describe "#recent_videos" do
    it "returns the videos in the reverse chronical order by create_at" do
      comedies = Category.create(name: "comedies")
      futurama = Video.create(title: "futurama", description: "space girl", category: comedies, created_at: 1.day.ago)
      south = Video.create(title: "South Park", description: "Killed Kenny", category: comedies)
      expect(comedies.recent_videos).to eq([south, futurama])
    end

    it "returns all the videos if there are less than 6 videos" do
      comedies = Category.create(name: "comedies")
      futurama = Video.create(title: "futurama", description: "space girl", category: comedies, created_at: 1.day.ago)
      south = Video.create(title: "South Park", description: "Killed Kenny", category: comedies)
      expect(comedies.recent_videos.count).to eq(2)
    end

    it "returns 6 vids if there are more than 6" do 
      comedies = Category.create(name: "comedies")
      7.times {Video.create(title: "foo", description: "bar", category: comedies)}
      expect(comedies.recent_videos.count).to eq(6)
    end

    it "returns the most recent 6 videos" do
      comedies = Category.create(name: "comedies")
      6.times {Video.create(title: "foo", description: "bar", category: comedies)}
      tonight = Video.create(title: "Yester", description: "day", category: comedies, created_at: 1.day.ago)
      expect(comedies.recent_videos).not_to include(tonight)
    end

    it "returns an empty array if category has no videos" do 
      comedies = Category.create(name: "comedies")
      expect(comedies.recent_videos).to eq([])
    end
  end
end
