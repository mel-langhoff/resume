require 'rails_helper'

RSpec.describe 'Resume Index Page', type: :feature do
  before :each do
    @xcel = Job.create!(
      id: 1,
      title: "IT Project Manager",
      company: "Xcel Energy",
      location: "Remote",
      start_date: DateTime.new(2022, 7, 01),
      end_date: DateTime.new(2022, 11, 01),
      description: "Developed and implemented new Agile project management systems, tools, and processes, reducing project lifecycles by 1-2 weeks and improving delivery timelines by 24%."
      )

    @sling = Job.create!(
      title: "Program Manager",
      company: "Sling TV",
      location: "Denver, CO",
      start_date: DateTime.new(2022, 2, 01),
      end_date: DateTime.new(2022, 05, 01),
      description: "Optimized IT and advertising projects using Agile, Scrum, and Kanban methodologies, resulting in a 20% productivity boost and improved project outcomes."
      )

    @crocs = Job.create!(
      title: "SAP Project Manager",
      company: "Crocs",
      location: "Niwot, CO",
      start_date: DateTime.new(2019, 9, 01),
      end_date: DateTime.new(2020, 04, 01),
      description: "Led a 45-member cross-functional internal team and third-party vendors in migrating SAP environments to the SAP HANA Enterprise Cloud."
      )
  end
  it 'contains a jobs attributes' do
    visit resume_path

    within '#job-description-1' do
      expect(page).to have_content(@xcel.title)
      expect(page).to have_content(@xcel.company)
      expect(page).to have_content(@xcel.location)
      expect(page).to have_content(@xcel.start_date)
      expect(page).to have_content(@xcel.end_date)
      expect(page).to have_content(@xcel.description)
    end
  end
  
  it 'lists jobs in descending order by start date' do
    visit resume_path

    expect("Xcel").to appear_before("Crocs")
  end
end