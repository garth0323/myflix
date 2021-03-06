require 'spec_helper'

describe Video do
  it { should belong_to (:category)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}

  describe "search_by_title" do
    it "returns an empty array if no match exists" do
      futurama = Video.create(title: "Futurama", description: "Space")
      back_future = Video.create(title: "Back to the Future", description: "Time")
      expect(Video.search_by_title("hello")).to eq([])
    end

    it "returns and array of one video for exact match" do
      futurama = Video.create(title: "Futurama", description: "Space")
      back_future = Video.create(title: "Back to the Future", description: "Time")
      expect(Video.search_by_title("Futurama")).to eq([futurama])
    end

    it "returns an array on one video for a partial match" do
      futurama = Video.create(title: "Futurama", description: "Space")
      back_future = Video.create(title: "Back to the Future", description: "Time")
      expect(Video.search_by_title("urama")).to eq([futurama])
    end

    it "returns an array of all matches ordered by created_at" do
      futurama = Video.create(title: "Futurama", description: "Space", created_at: 1.day.ago)
      back_future = Video.create(title: "Back to the Future", description: "Time")
      expect(Video.search_by_title("Futur")).to eq([back_future, futurama])
    end

    it "returns an empty array for a search with an empty string" do
      futurama = Video.create(title: "Futurama", description: "Space", created_at: 1.day.ago)
      back_future = Video.create(title: "Back to the Future", description: "Time")
      expect(Video.search_by_title("")).to eq([])
    end
  end
end

