require 'rails_helper'

RSpec.describe 'Resume Index Page', type: :feature do
  before :each do
    @market_money = Project.create!(
      id: 1,
      title: "Market Money",
      description: "Developing an API enabling access to local farmers markets and vendors.",
      git_repo: "https://github.com/JaredMHobson/market_money",
      tech: "Ruby on Rails"
    )

    @battleship = Project.create!(
      id: 2,
      title: "Battleship",
      description: "Terminal Ruby game of Battleship developed with a partner.",
      git_repo: "https://github.com/mel-langhoff/battleship",
      tech: "Ruby"
    )
  end

  it 'contains a projects attributes' do
    visit projects_path

    within '#project-description-2' do
      expect(page).to have_content(@battleship.title)
      expect(page).to have_link('Github Repository', href: @battleship.git_repo)
      expect(page).to have_content(@battleship.tech)
      expect(page).to have_content(@battleship.description)
    end
  end
end