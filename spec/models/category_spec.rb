require 'spec_helper'

describe Category do
  it { should have_many :videos }
  it { should validate_presence_of :name }

  describe "#recent_videos" do
    it "returns videos in reverse chronological order" do
      strange = Category.create(name: 'Strange')
      bunny = Video.create(title: "bunny figs", description: "strange movie", category: strange, created_at: 1.day.ago)
      mad = Video.create(title: "hopping mad", description: "bunny fig sequel", category: strange)
      expect(strange.recent_videos).to eq([mad, bunny])
    end
    it "returns all videos if there are less than 6 videos" do
      strange = Category.create(name: 'Strange')
      bunny = Video.create(title: "bunny figs", description: "strange movie", category: strange, created_at: 1.day.ago)
      mad = Video.create(title: "hopping mad", description: "bunny fig sequel", category: strange)
      expect(strange.recent_videos.count).to eq(2)
    end
    it "returns only 6 videos if results are more than 6" do
      strange = Category.create(name: 'Strange')
      7.times {Video.create(title: 'boo', description: 'booboo', category: strange)}
      expect(strange.recent_videos.count).to eq(6)
    end
    it "returns the most recent 6 videos" do
      strange = Category.create(name: 'Strange')
      6.times {Video.create(title: 'boo', description: 'booboo', category: strange)}
      bunny = Video.create(title: "bunny figs", description: "strange movie", category: strange, created_at: 1.day.ago)
      expect(strange.recent_videos).not_to include(bunny)
    end
    it "returns an empty array if the category does not have any videos" do
      strange = Category.create(name: 'Strange')
      expect(strange.recent_videos).to eq([])
    end
  end
end
