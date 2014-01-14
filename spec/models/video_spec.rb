require 'spec_helper'

describe Video do
  it { should belong_to :category }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  #it 'saves itself' do
  #  video = Video.new(title: "Vid Title", description: "Vid Desc" )
  #  video.save
  #  Video.last.title.should == "Vid Title"
  #end

  #it 'belongs to category' do
  #  horrible = Category.create(name: 'horrible')
  #  badvideo = Video.create(title: 'bad movie', description: 'really bad movie', category: horrible)
  #  expect(badvideo.category).to eq(horrible)
  #end

  #it 'does not save a video without a title' do
  #  Video.create(description: 'funny movie')
  #  expect(Video.count).to eq(0)
  #end

  #it 'does not save a video without a description' do
  #  Video.create(title: 'elf')
  #  expect(Video.count).to eq(0)
  #end

end
