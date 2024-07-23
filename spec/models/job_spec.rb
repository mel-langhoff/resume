require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :company }
    it { should validate_presence_of :location }
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :description }
  end

  it "#sort_jobs" do
    xcel = Job.create!(
      title: "IT Project Manager",
      company: "Xcel Energy",
      location: "Remote",
      start_date: DateTime.new(2022, 7, 01),
      end_date: DateTime.new(2022, 11, 01),
      description: "Developed and implemented new Agile project management systems, tools, and processes, reducing project lifecycles by 1-2 weeks and improving delivery timelines by 24%."
      )
    
    sling = Job.create!(
      title: "Program Manager",
      company: "Sling TV",
      location: "Denver, CO",
      start_date: DateTime.new(2022, 2, 01),
      end_date: DateTime.new(2022, 05, 01),
      description: "Optimized IT and advertising projects using Agile, Scrum, and Kanban methodologies, resulting in a 20% productivity boost and improved project outcomes."
      )
    
    crocs = Job.create!(
      title: "SAP Project Manager",
      company: "Crocs",
      location: "Niwot, CO",
      start_date: DateTime.new(2019, 9, 01),
      end_date: DateTime.new(2020, 04, 01),
      description: "Led a 45-member cross-functional internal team and third-party vendors in migrating SAP environments to the SAP HANA Enterprise Cloud."
      )

    expect(Job.sort_jobs).to eq([xcel, sling, crocs])
  end
end
