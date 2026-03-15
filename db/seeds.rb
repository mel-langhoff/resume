require 'yaml'

# jobs


puts "Clearing jobs..."
Job.destroy_all

puts "Creating jobs..."

mountainview = Job.create!(
  title: "Technical Project Management Consultant",
  company: "Mountainview Consulting",
  location: "Remote",
  start_date: DateTime.new(2024, 9, 1),
  end_date: nil,
  description: "Technical project management consulting focused on Agile delivery systems, workflow tooling, and cross-functional execution.",
  responsibilities: [
    "Assessed delivery workflows and implemented Agile frameworks and internal workflow tools, improving project visibility and execution and raising team productivity by 12%.",
    "Collaborated with cross-functional stakeholders to implement PMO improvements and project tracking systems that increased efficiency, clarity, and predictability across teams while reducing operational bottlenecks.",
    "Led cross-functional technical initiatives involving backend systems, microservices, REST APIs, and SaaS platform implementations.",
    "Translated complex technical requirements into clear project plans and actionable tasks for engineering teams and business stakeholders."
  ]
)

tutor = Job.create!(
  title: "Tutor",
  company: "Self-employed",
  location: "Remote",
  start_date: DateTime.new(2020, 8, 1),
  end_date: nil,
  description: "Provided customized instruction through one-on-one and small group tutoring sessions.",
  responsibilities: [
    "Delivered personalized instruction through one-on-one and small group tutoring sessions tailored to individual learning needs.",
    "Developed engaging lesson plans that improved student comprehension, confidence, and participation.",
    "Provided bilingual support and adapted teaching strategies to serve students from diverse backgrounds."
  ]
)

malhecho = Job.create!(
  title: "Business, Sales, Marketing, eCommerce",
  company: "Malhecho Art",
  location: "Remote",
  start_date: DateTime.new(2022, 3, 1),
  end_date: DateTime.new(2023, 6, 1),
  description: "Managed business operations, website presence, and marketing strategy for a small creative business.",
  responsibilities: [
    "Managed website content, online presence, and digital marketing initiatives to increase brand visibility and customer engagement.",
    "Developed marketing strategies and coordinated promotional campaigns across social media and digital platforms.",
    "Analyzed sales performance and customer engagement data to guide marketing decisions and improve business outcomes."
  ]
)

xcel = Job.create!(
  title: "IT Project Manager",
  company: "Xcel Energy",
  location: "Remote",
  start_date: DateTime.new(2022, 7, 1),
  end_date: DateTime.new(2023, 7, 1),
  description: "Led Agile transformation initiatives and project delivery improvements for enterprise teams.",
  responsibilities: [
    "Partnered with stakeholders to develop and implement new Agile project management standards and systems for Xcel Energy.",
    "Introduced project management software tools and automated Jira workflows, reducing project lifecycles by 1-2 weeks and improving delivery timelines by 10%.",
    "Managed energy savings implementation and system architecture projects demonstrating a 26% improvement in team efficiency."
  ]
)

sling = Job.create!(
  title: "Program Manager",
  company: "Sling TV",
  location: "Denver, CO",
  start_date: DateTime.new(2022, 2, 1),
  end_date: DateTime.new(2022, 7, 1),
  description: "Optimized IT and advertising project delivery through Agile frameworks and improved workflow systems.",
  responsibilities: [
    "Improved IT and advertising project delivery for Dish Media and Sling TV using Agile, Scrum, and Kanban methodologies.",
    "Led rollout of new project management software while training teams and supporting cross-functional delivery.",
    "Introduced Jira reporting dashboards and delivery metrics that increased team productivity by 15%."
  ]
)

crocs = Job.create!(
  title: "SAP Project Manager",
  company: "Crocs",
  location: "Niwot, CO",
  start_date: DateTime.new(2019, 9, 1),
  end_date: DateTime.new(2020, 4, 1),
  description: "Managed enterprise SAP cloud migration planning and delivery.",
  responsibilities: [
    "Led a team of 45 in migrating on-premise SAP environments to SAP HANA Enterprise Cloud.",
    "Developed testing schedules and cutover plans to ensure smooth system transitions and minimal downtime.",
    "Coordinated cross-functional teams and vendors to deliver a successful cloud migration with a 100% success rate.",
    "Managed project risks and vendor relationships to ensure on-time milestone delivery."
  ]
)

sovos = Job.create!(
  title: "Technical Project Manager",
  company: "Sovos Compliance",
  location: "Atlanta, GA",
  start_date: DateTime.new(2017, 4, 1),
  end_date: DateTime.new(2019, 1, 1),
  description: "Managed SaaS SAP ERP implementations for enterprise clients.",
  responsibilities: [
    "Led implementation of SaaS SAP ERP solutions for Fortune 500 companies including eInvoicing and tax compliance platforms.",
    "Advised clients on business processes, tax legislation, and SAP solution design in English and Spanish.",
    "Managed up to 25 concurrent projects while coordinating engineering and QA release planning.",
    "Developed bilingual training materials and led training programs that improved client satisfaction by 34%."
  ]
)

college_lib = Job.create!(
  title: "Supervisor",
  company: "UW-Madison Helen C White College Library",
  location: "Madison, WI",
  start_date: DateTime.new(2011, 3, 1),
  end_date: DateTime.new(2016, 12, 1),
  description: "Supervised daily library operations, staff training, and customer service.",
  responsibilities: [
    "Led team training and development initiatives focused on improving service quality and staff performance.",
    "Managed daily operations including scheduling, staffing, and customer support.",
    "Implemented operational improvements that streamlined library workflows and improved user experience."
  ]
)

designlab = Job.create!(
  title: "Assistant Coordinator",
  company: "University of Wisconsin-Madison DesignLab",
  location: "Madison, WI",
  start_date: DateTime.new(2015, 8, 1),
  end_date: DateTime.new(2016, 5, 1),
  description: "Supported coordination of workshops and events within the DesignLab innovation space.",
  responsibilities: [
    "Organized workshops and events that supported student innovation and collaborative design work.",
    "Provided operational and administrative support including scheduling and stakeholder communication.",
    "Assisted in developing initiatives that improved the DesignLab learning environment."
  ]
)

brittania = Job.create!(
  title: "English Teacher",
  company: "Brittania School of English",
  location: "Barcelona Area, Spain",
  start_date: DateTime.new(2014, 11, 1),
  end_date: DateTime.new(2015, 11, 1),
  description: "Taught English to non-native speakers in immersive classroom settings.",
  responsibilities: [
    "Developed customized lesson plans that strengthened students' English communication skills.",
    "Facilitated interactive language-learning environments that encouraged participation and engagement.",
    "Evaluated student progress and adapted instruction to support continuous improvement."
  ]
)


puts "Clearing projects..."
Project.destroy_all

puts "Creating projects..."

portfolio = Project.create!(
  title: "Personal Portfolio",
  description: "Built and deployed a full-stack Ruby on Rails web application hosted on Heroku to showcase portfolio projects and dynamically manage resume content. Designed relational data models with ActiveRecord and implemented backend functionality using Ruby, SQL, and RESTful APIs. Developed and tested application features with RSpec, performed API testing with Postman, and designed the frontend using HTML, CSS, and Bootstrap.",
  git_repo: "https://github.com/mel-langhoff/resume",
  demo_link: "https://www.mel-langhoff.com",
  tech: "Ruby on Rails, Ruby, SQL, ActiveRecord, REST APIs, RSpec, Postman, HTML, CSS, Bootstrap, Heroku, Git",
  project_type: "Rails"
)

top_shelf = Project.create!(
  title: "Top Shelf Roles"
  description: "Top Shelf Roles is a Ruby on Rails application that aggregates and ranks curated job postings into a searchable dashboard so users can quickly find the most relevant opportunities without manually searching multiple job boards. Built with Ruby on Rails, PostgreSQL, ActiveRecord, Bootstrap, HTML, CSS, Git, GitHub, and Heroku, it uses web scraping and AI scoring logic to collect job data, rank listings, and filter results by title, company, and location.",
  git_repo: "https://github.com/mel-langhoff/topshelfroles",
  demo_link: "https://topshelf.mel-langhoff.com/",
  tech: "Ruby, Ruby on Rails, PostgreSQL, REST APIs, JSON, RSpec, Git",
  project_type: "Rails"
)

coolio_toolios = Project.create!(
  title: "Coolio Toolios",
  description: "Developed a Ruby on Rails automation platform that scrapes job postings and generates tailored resumes using Nokogiri web scraping, OpenAI API integrations, and RESTful APIs. Designed microservices-style components for content generation and PDF export, implemented relational data models with ActiveRecord, and built the interface using HTML, CSS, Bootstrap, and Ruby gems. Implemented automated testing with RSpec, integrated API testing with Postman, and configured CI/CD workflows.",
  git_repo: "https://github.com/mel-langhoff/coolio_toolios",
  demo_link: nil,
  tech: "Ruby on Rails, Ruby, Nokogiri, OpenAI API, REST APIs, ActiveRecord,  HTML, CSS, Bootstrap, Git, RSpec, Postman, CI/CD",
  project_type: "Rails"
)

black_thursday = Project.create!(
  title: "Black Thrusday",
  description: "Black Thursday is a Ruby application that parses and analyzes e-commerce data from CSV files. Built with Ruby, CSV parsing, and RSpec, it models relationships between merchants, customers, invoices, and transactions using object-oriented design. The project focuses on test-driven development and business intelligence queries to extract insights from sales data.",
  git_repo: "https://github.com/mel-langhoff/black_thursday",
  demo_link: nil,
  tech: "Ruby, CSV, RSpec, Git",
  project_type: "Ruby"
)

professional_api = Project.create!(
  title: "Professional API",
  description: "Professional API is a Ruby on Rails backend application that collects and structures professional experience data to power automated résumé generation and formatting. Built with Ruby on Rails, RESTful APIs, and PostgreSQL, it stores structured career information and exposes it through endpoints for use in résumé-building tools. The project demonstrates backend API design, data modeling, and automated document generation workflows.",
  git_repo: "https://github.com/mel-langhoff/professional_api",
  demo_link: nil,
  tech: "Ruby, Ruby on Rails, PostgreSQL, REST APIs, ActiveRecord, JSON, RSpec, Git",
  project_type: "Rails"
)




puts "Done!"