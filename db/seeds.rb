# jobs
tutor = Job.create!(
  title: "Private Tutor",
  company: "Self-employed",
  location: "Remote",
  start_date: DateTime.new(2020, 8, 01),
  end_date: DateTime.new(2023, 10, 01),
  description: "Self-employed as a private tutor, providing personalized instruction to students aged 4-18. Specialized in adapting teaching methods to individual learning styles and academic goals.",
  responsibilities: [
    "Delivered personalized instruction for students aged 4-18, adapting to their unique learning styles and academic goals, ensuring tailored educational experiences that foster individual growth.",
    "Created engaging learning environments through individual and group sessions, utilizing creative teaching methods to maintain student interest and encourage active participation.",
    "Leveraged skills in Spanish and teaching methodologies to enhance educational outcomes, providing bilingual support and culturally relevant materials to enrich the learning process."
  ]
)

malhecho = Job.create!(
  title: "Business, Sales, Marketing, eCommerce",
  company: "Malhecho Art",
  location: "Remote",
  start_date: DateTime.new(2022, 3, 01),
  end_date: DateTime.new(2023, 6, 01),
  description: "Managed business operations for J.Malhecho Art, including website management, strategic marketing, and Spanish translation.",
  responsibilities: [
    "Enhanced online presence and market visibility through targeted marketing and networking, resulting in increased customer engagement and sales.",
    "Utilized project management and social media skills to drive business growth, coordinating campaigns and managing digital content.",
    "Developed and implemented business strategies to optimize performance, leveraging data analytics to inform decision-making and improve outcomes."
  ]
)

xcel = Job.create!(
  title: "IT Project Manager",
  company: "Xcel Energy",
  location: "Remote",
  start_date: DateTime.new(2022, 7, 01),
  end_date: DateTime.new(2022, 11, 01),
  description: "Developed and implemented Agile project management systems, improving efficiency and delivery timelines.",
  responsibilities: [
    "Reduced project lifecycles by 1-2 weeks and enhanced delivery timelines by 24%, optimizing project processes and increasing team productivity.",
    "Collaborated with the director and a small team to streamline processes, ensuring effective communication and coordination.",
    "Led the implementation of new project management tools and methodologies, training team members and facilitating adoption."
  ]
)

sling = Job.create!(
  title: "Program Manager",
  company: "Sling TV",
  location: "Denver, CO",
  start_date: DateTime.new(2022, 2, 01),
  end_date: DateTime.new(2022, 5, 01),
  description: "Optimized project processes for Dish Media and SlingTV using Agile, Scrum, and Kanban methodologies.",
  responsibilities: [
    "Achieved a 20% increase in productivity and improved project outcomes by implementing efficient project management practices.",
    "Led teams of 10-15 members to implement effective project strategies, ensuring alignment with organizational goals.",
    "Facilitated cross-functional collaboration, enhancing communication and cooperation between departments."
  ]
)

crocs = Job.create!(
  title: "SAP Project Manager",
  company: "Crocs",
  location: "Niwot, CO",
  start_date: DateTime.new(2019, 9, 01),
  end_date: DateTime.new(2020, 4, 01),
  description: "Led a team in migrating SAP environments to SAP HANA Enterprise Cloud, ensuring smooth transitions.",
  responsibilities: [
    "Coordinated testing schedules and cutover plans, achieving on-time project delivery and minimizing disruptions.",
    "Managed a 45-member team and third-party vendors for seamless cloud migration, ensuring effective communication and collaboration.",
    "Developed detailed project plans and timelines, monitoring progress and addressing issues promptly."
  ]
)

sovos = Job.create!(
  title: "Project Manager, Implementation Consultant, & Junior FI Consultant",
  company: "Sovos",
  location: "Atlanta, GA",
  start_date: DateTime.new(2017, 4, 01),
  end_date: DateTime.new(2019, 1, 01),
  description: "Integrated SaaS SAP ERP solutions for Fortune 500 companies, focusing on eInvoicing, eAccounting, and tax compliance.",
  responsibilities: [
    "Developed bilingual training materials and led sessions, boosting client satisfaction ratings by 17% through effective knowledge transfer.",
    "Managed up to 25 projects simultaneously, overseeing teams of 5-12 members and ensuring timely delivery.",
    "Collaborated with clients to understand their needs and deliver customized solutions, enhancing overall project success."
  ]
)

chamberlains = Job.create!(
  title: "IT Project Manager",
  company: "Xcel Energy",
  location: "Remote",
  start_date: DateTime.new(2022, 7, 01),
  end_date: DateTime.new(2022, 11, 01),
  description: "Developed and implemented new Agile project management systems, tools, and processes, reducing project lifecycles by 1-2 weeks and improving delivery timelines by 24%."
)

college_lib = Job.create!(
  title: "Supervisor",
  company: "UW-Madison Helen C White College Library",
  location: "Madison, WI",
  start_date: DateTime.new(2011, 3, 01),
  end_date: DateTime.new(2016, 12, 01),
  description: "Supervised library operations and staff, ensuring efficient service delivery and customer satisfaction.",
  responsibilities: [
    "Led team training and development initiatives to enhance service quality and staff performance.",
    "Managed daily operations, including scheduling and customer service, to ensure a smooth and efficient workflow.",
    "Implemented new policies and procedures to improve operational efficiency and user experience."
  ]
)

designlab = Job.create!(
  title: "Assistant Coordinator",
  company: "University of Wisconsin-Madison DesignLab",
  location: "Madison, WI",
  start_date: DateTime.new(2015, 8, 01),
  end_date: DateTime.new(2016, 5, 01),
  description: "Supported the coordination of design lab activities and student projects.",
  responsibilities: [
    "Assisted in organizing workshops and events, enhancing the learning experience and student engagement.",
    "Provided administrative support and managed communication with stakeholders, ensuring smooth operations.",
    "Collaborated with team members to develop and implement new initiatives, driving continuous improvement."
  ]
)

brittania = Job.create!(
  title: "English Teacher",
  company: "Brittania School of English",
  location: "Barcelona Area, Spain",
  start_date: DateTime.new(2014, 11, 01),
  end_date: DateTime.new(2015, 11, 01),
  description: "Taught English to non-native speakers, focusing on language acquisition and communication skills.",
  responsibilities: [
    "Developed and implemented lesson plans tailored to student needs, enhancing their language skills and confidence.",
    "Facilitated cultural exchange and language immersion experiences, promoting a deeper understanding of English.",
    "Assessed student progress and provided feedback, ensuring continuous improvement and goal achievement."
  ]
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