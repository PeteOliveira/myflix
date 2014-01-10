require 'spec_helper'

describe Video do
  it 'saves itself' do
    video = Video.new(title: "Vid Title", description: "Vid Desc" )
    video.save
    Video.last.title.should == "Vid Title"
  end
end
