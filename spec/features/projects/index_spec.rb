require 'rails_helper'

RSpec.describe 'Resume Index Page', type: :feature do
  before :each do
    @market_money = Project.create!(
      id: 1,
      title: "Market Money",
      description: "Developing an API enabling access to local farmers markets and vendors.",
      git_repo: "https://github.com/JaredMHobson/market_money",
      tech: "Ruby on Rails",
      project_type: "rails"
    )

    @battleship = Project.create!(
      id: 2,
      title: "Battleship",
      description: "Terminal Ruby game of Battleship developed with a partner.",
      git_repo: "https://github.com/mel-langhoff/battleship",
      tech: "Ruby",
      project_type: "ruby"
    )

    @portfolio = Project.create!(
      id: 3,
      title: "Personal Portfolio",
      description: "My website.",
      git_repo: "https://github.com/mel-langhoff/resume",
      demo_link: "www.mel-langhoff.com",
      tech: "Rails",
      project_type: "rails"
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

    within '#project-description-3' do
      expect(page).to have_content("www.mel-langhoff.com")
    end
  end
end