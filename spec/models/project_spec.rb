require 'rails_helper'

RSpec.describe Project, type: :model do
  before :each do 
    @market_money = Project.create!(
    title: "Market Money",
    description: "Developing an API enabling access to local farmers markets and vendors.",
    git_repo: "https://github.com/JaredMHobson/market_money",
    tech: "Ruby on Rails",
    project_type: "rails"
  )

  @battleship = Project.create!(
    title: "Battleship",
    description: "Terminal Ruby game of Battleship developed with a partner.",
    git_repo: "https://github.com/mel-langhoff/battleship",
    tech: "Ruby",
    project_type: "ruby"
  )

  @portfolio = Project.create!(
    title: "Personal Portfolio",
    description: "My website.",
    git_repo: "https://github.com/mel-langhoff/resume",
    demo_link: "www.mel-langhoff.com",
    tech: "Rails",
    project_type: "rails"
  )
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :git_repo }
    it { should validate_presence_of :tech }
    it { should validate_presence_of :description }
    it { should validate_presence_of :project_type }
  end


  it '#alphabetical' do
    
  end

  it '#oldest_first' do

  end

  describe '#sort_by_type' do
    it 'sorts by a specificied type' do
      rails_projects = Project.sort_by_type('rails')
      expect(rails_projects).to eq([@market_money, @portfolio])
      expect(rails_projects).to_not include(@battleship)
    end

    it 'returns all projects for a non specified type' do
      all_projects = Project.sort_by_type('All')
      expect(all_projects).to include(@battleship, @market_money, @portfolio)
    end
  end
end