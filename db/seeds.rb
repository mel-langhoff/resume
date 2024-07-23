# jobs
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

# projects
market_money = Project.create!(
  title: "Market Money",
  description: "Developing an API enabling access to local farmers markets and vendors.",
  git_repo: "https://github.com/JaredMHobson/market_money",
  tech: "Ruby on Rails"
)

battleship = Project.create!(
  title: "Battleship",
  description: "Terminal Ruby game of Battleship developed with a partner.",
  git_repo: "https://github.com/mel-langhoff/battleship",
  tech: "Ruby"
)