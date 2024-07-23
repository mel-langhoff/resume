require 'rails_helper'

RSpec.describe 'Resume Index Page', type: :feature do
  before :each do
    
  end

  it 'contains a jobs attributes' do
    visit resume_path

    within '#job-description-1' do
      expect(page).to have_content(@xcel.title)
      expect(page).to have_content(@xcel.company)
      expect(page).to have_content(@xcel.location)
      expect(page).to have_content(@xcel.formatted_start_date)
      expect(page).to have_content(@xcel.formatted_end_date)
      expect(page).to have_content(@xcel.description)
    end
  end
  
  it 'lists jobs in descending order by start date' do
    visit resume_path

    expect("Xcel").to appear_before("Crocs")
  end
end