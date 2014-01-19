require 'spec_helper'

describe Video do
  it { should belong_to :category }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  describe 'search_by_title' do
    it 'returns an empty array if search string is there is no match' do
      fab = Video.create(title: 'fab', description: 'fab movie')
      fabulous = Video.create(title: 'fabulous', description: 'fabulous movie')
      expect(Video.search_by_title('robin')).to eq([])
    end
    it 'returns one video for an exact match' do
      fab = Video.create(title: 'fab', description: 'fab movie')
      fabulous = Video.create(title: 'fabulous', description: 'fabulous movie')
      expect(Video.search_by_title("fabulous")).to eq([fabulous])
    end
    it 'returns an array of one video for a partial match' do
      fab = Video.create(title: 'fab', description: 'fab movie')
      fabulous = Video.create(title: 'fabulous', description: 'fabulous movie')
      expect(Video.search_by_title("fabu")).to eq([fabulous])
    end
    it 'returns an array of all matches ordered by created_at' do
      fab = Video.create(title: 'fab', description: 'fab movie', created_at: 1.day.ago)
      fabulous = Video.create(title: 'fabulous', description: 'fabulous movie')
      expect(Video.search_by_title("fab")).to eq([fabulous, fab])
    end

    it 'returns an empty array if search term is empty' do
      fab = Video.create(title: 'fab', description: 'fab movie')
      fabulous = Video.create(title: 'fabulous', description: 'fabulous movie')
      expect(Video.search_by_title("")).to eq([])
    end

  end
end
