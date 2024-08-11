require 'rails_helper'

RSpec.describe Project, type: :model do
  before :each do 
    @market_money = Project.create!(
    title: "Market Money",
    description: "Developing an API enabling access to local farmers markets and vendors.",
    git_repo: "https://github.com/JaredMHobson/market_money",
    tech: "Ruby on Rails",
    type: "rails"
  )

  @battleship = Project.create!(
    title: "Battleship",
    description: "Terminal Ruby game of Battleship developed with a partner.",
    git_repo: "https://github.com/mel-langhoff/battleship",
    tech: "Ruby",
    type: "ruby"
  )

  @portfolio = Project.create!(
    title: "Personal Portfolio",
    description: "My website.",
    git_repo: "https://github.com/mel-langhoff/resume",
    demo_link: "www.mel-langhoff.com",
    tech: "Rails",
    type: "rails"
  )
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :git_repo }
    it { should validate_presence_of :tech }
    it { should validate_presence_of :description }
    it { should validate_presence_of :type }
  end


  it '#alphabetical' do
    
  end

  it '#oldest_first' do

  end

  it '#sort_by_type' do
  
  end
end