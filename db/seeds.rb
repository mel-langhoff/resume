# jobs
# jobs

tutor = Job.create!(
  title: "Private Tutor",
  company: "Self-employed",
  location: "Remote",
  start_date: DateTime.new(2020, 8, 01),
  end_date: DateTime.new(2023, 10, 01),
  description: "As a self-employed private tutor, I provided personalized instruction to students aged 4-18. My focus was on adapting teaching methods to meet individual learning styles and academic goals, ensuring effective and engaging learning experiences.",
  responsibilities: [
    "Delivered personalized instruction for students aged 4-18, tailoring lessons to their unique learning styles and academic goals. This approach ensured that each student received targeted support, promoting their academic growth and confidence.",
    "Created engaging learning environments through both individual and group sessions. Utilized creative teaching methods and interactive activities to maintain student interest and foster a positive learning atmosphere.",
    "Leveraged my skills in Spanish and various teaching methodologies to enhance educational outcomes. Provided bilingual support and culturally relevant materials, enriching the learning experience for students from diverse backgrounds."
  ]
)

malhecho = Job.create!(
  title: "Business, Sales, Marketing, eCommerce",
  company: "Malhecho Art",
  location: "Remote",
  start_date: DateTime.new(2022, 3, 01),
  end_date: DateTime.new(2023, 6, 01),
  description: "Managed business operations for J.Malhecho Art, focusing on website management, strategic marketing, and Spanish translation. My role was key in enhancing the company's online presence and driving business growth through effective marketing strategies.",
  responsibilities: [
    "Enhanced the company's online presence and market visibility through targeted marketing campaigns and strategic networking. This led to increased customer engagement, higher traffic to the website, and improved sales.",
    "Utilized my project management and social media skills to drive business growth. Coordinated marketing efforts, managed digital content, and implemented strategies that effectively promoted the brand and its offerings.",
    "Developed and executed business strategies to optimize performance. Analyzed data to inform decision-making, ensuring that marketing and operational strategies were aligned with business goals."
  ]
)

xcel = Job.create!(
  title: "IT Project Manager",
  company: "Xcel Energy",
  location: "Remote",
  start_date: DateTime.new(2022, 7, 01),
  end_date: DateTime.new(2022, 11, 01),
  description: "In my role as an IT Project Manager at Xcel Energy, I developed and implemented Agile project management systems. My work significantly improved project efficiency and reduced delivery timelines.",
  responsibilities: [
    "Implemented Agile project management systems that reduced project lifecycles by 1-2 weeks. Enhanced delivery timelines by 24%, which increased overall team productivity and project efficiency.",
    "Collaborated closely with the director and a small team to streamline processes. Ensured effective communication and coordination among team members, facilitating smoother project execution.",
    "Led the introduction of new project management tools and methodologies. Trained team members on these tools, ensuring successful adoption and integration into existing workflows."
  ]
)

sling = Job.create!(
  title: "Program Manager",
  company: "Sling TV",
  location: "Denver, CO",
  start_date: DateTime.new(2022, 2, 01),
  end_date: DateTime.new(2022, 5, 01),
  description: "As a Program Manager at Sling TV, I optimized project processes using Agile, Scrum, and Kanban methodologies. My role involved improving productivity and project outcomes for Dish Media and Sling TV.",
  responsibilities: [
    "Implemented Agile, Scrum, and Kanban methodologies to optimize project processes. Achieved a 20% increase in productivity and significantly improved project outcomes through effective strategy implementation.",
    "Led teams of 10-15 members to execute project strategies aligned with organizational goals. Ensured that team efforts were coordinated and focused on achieving project objectives.",
    "Facilitated cross-functional collaboration to enhance communication and cooperation between departments. This approach improved overall project effectiveness and team dynamics."
  ]
)

crocs = Job.create!(
  title: "SAP Project Manager",
  company: "Crocs",
  location: "Niwot, CO",
  start_date: DateTime.new(2019, 9, 01),
  end_date: DateTime.new(2020, 4, 01),
  description: "Managed the migration of SAP environments to SAP HANA Enterprise Cloud for Crocs. Ensured smooth transitions and effective project management for a successful cloud migration.",
  responsibilities: [
    "Coordinated testing schedules and cutover plans to ensure on-time project delivery. Managed potential risks and minimized disruptions during the migration process.",
    "Led a 45-member team and coordinated with third-party vendors for seamless cloud migration. Maintained effective communication and collaboration to achieve project goals.",
    "Developed detailed project plans and monitored progress. Addressed issues promptly to keep the project on track and within the defined scope and timeline."
  ]
)

sovos = Job.create!(
  title: "Project Manager, Implementation Consultant, & Junior FI Consultant",
  company: "Sovos",
  location: "Atlanta, GA",
  start_date: DateTime.new(2017, 4, 01),
  end_date: DateTime.new(2019, 1, 01),
  description: "Integrated SaaS SAP ERP solutions for Fortune 500 companies, focusing on eInvoicing, eAccounting, and tax compliance. My role involved managing multiple projects and ensuring successful client engagements.",
  responsibilities: [
    "Developed bilingual training materials and led training sessions, boosting client satisfaction ratings by 17%. Enhanced client understanding of SAP solutions through effective knowledge transfer.",
    "Managed up to 25 projects simultaneously, overseeing teams of 5-12 members. Ensured that projects were delivered on time and met client requirements.",
    "Collaborated closely with clients to understand their needs and deliver customized solutions. Enhanced overall project success by tailoring solutions to client specifications."
  ]
)

# chamberlains = Job.create!(
#   title: "Chocolatier",
#   company: "Chamberlains",
#   location: "Atlanta, GA",
#   start_date: DateTime.new(2019, 6, 01),
#   end_date: DateTime.new(2021, 12, 01),
#   description: "Worked as a chocolatier at Chamberlains, a renowned chocolate shop in Atlanta. Specialized in creating high-quality artisanal chocolates and managing the production process.",
#   responsibilities: [
#     "Crafted a variety of artisanal chocolates, utilizing advanced techniques to ensure high-quality products. Developed new chocolate recipes and flavors, contributing to the shop's unique offerings.",
#     "Managed the chocolate production process, from sourcing ingredients to final packaging. Ensured consistency and quality in all products, maintaining high standards of excellence.",
#     "Collaborated with the team to design and implement creative chocolate displays and seasonal specials. Enhanced customer experiences through visually appealing and delicious chocolate creations."
#   ]
# )

college_lib = Job.create!(
  title: "Supervisor",
  company: "UW-Madison Helen C White College Library",
  location: "Madison, WI",
  start_date: DateTime.new(2011, 3, 01),
  end_date: DateTime.new(2016, 12, 01),
  description: "Supervised operations and staff at the UW-Madison Helen C White College Library, ensuring efficient service delivery and high levels of customer satisfaction.",
  responsibilities: [
    "Led team training and development initiatives, focusing on improving service quality and staff performance. Implemented new training programs to enhance staff skills and efficiency.",
    "Managed daily library operations, including scheduling and customer service. Ensured that library services ran smoothly and met the needs of students and faculty.",
    "Implemented new policies and procedures to improve operational efficiency. Developed strategies to enhance the overall user experience and streamline library processes."
  ]
)

designlab = Job.create!(
  title: "Assistant Coordinator",
  company: "University of Wisconsin-Madison DesignLab",
  location: "Madison, WI",
  start_date: DateTime.new(2015, 8, 01),
  end_date: DateTime.new(2016, 5, 01),
  description: "Supported coordination of design lab activities and student projects at the University of Wisconsin-Madison DesignLab. Facilitated workshops and events to enhance the learning experience.",
  responsibilities: [
    "Assisted in organizing and executing workshops and events, which contributed to a more engaging learning environment for students. Coordinated logistics and provided support to ensure successful events.",
    "Provided administrative support, managing communication with stakeholders and ensuring smooth operations. Handled scheduling, coordination, and follow-up tasks to support lab activities.",
    "Collaborated with team members to develop and implement new initiatives. Contributed to continuous improvement efforts and supported the lab's mission of fostering innovation and creativity."
  ]
)

brittania = Job.create!(
  title: "English Teacher",
  company: "Brittania School of English",
  location: "Barcelona Area, Spain",
  start_date: DateTime.new(2014, 11, 01),
  end_date: DateTime.new(2015, 11, 01),
  description: "Taught English to non-native speakers at Brittania School of English in Barcelona. Focused on language acquisition and communication skills, fostering a dynamic and immersive learning environment.",
  responsibilities: [
    "Developed and implemented customized lesson plans tailored to student needs. Enhanced students' language skills and confidence through engaging and effective teaching methods.",
    "Facilitated cultural exchange and language immersion experiences, enriching students' understanding of English and diverse cultural contexts. Encouraged active participation and interactive learning.",
    "Assessed student progress and provided constructive feedback to support their continuous improvement. Monitored academic development and adjusted teaching strategies to meet evolving needs."
  ]
)

# projects
market_money = Project.create!(
  title: "Market Money",
  description: "Developing an API enabling access to local farmers markets and vendors.",
  git_repo: "https://github.com/mel-langhoff/market_money",
  tech: "Ruby on Rails",
  type: "Rails"
)

battleship = Project.create!(
  title: "Battleship",
  description: "Terminal Ruby game of Battleship developed with a partner.",
  git_repo: "https://github.com/mel-langhoff/battleship",
  tech: "Ruby",
  type: "Ruby"
)

# portfolio = Project.create!(
#   title: "Personal Portfolio",
#   description: "My website.",
#   git_repo: "https://github.com/mel-langhoff/resume",
#   demo_link: "www.mel-langhoff.com",
#   tech: "Rails",
#   type: "Rails"
# )

# vinyls_be = Project.create!(
#   title: "Vinyl Collection BE",
#   description: "Rails API application using Last.fm and MusicBrainz API endpoints",
#   git_repo: "https://github.com/mel-langhoff/vinyl_collection_be",
#   demo_link: "",
#   tech: "Rails, Ruby, ActiveRecord, PostgreSQL",
#   type: "Rails"
# )

# vinyls_fe = Project.create!(
#   title: "Vinyl Collection FE",
#   description: "Rails API application serving as a front end for Vinyl Collection BE",
#   git_repo: "https://github.com/mel-langhoff/vinyl_collection_fe",
#   demo_link: "",
#   tech: "Rails, Ruby, CSS, HTML",
#   type: "Rails"
# )
# coupon_codes = Project.create!(
#   title: "Coupon Codes",
#   description: "Coupon code project",
#   git_repo: "https://github.com/mel-langhoff/coupon_codes",
#   demo_link: "",
#   tech: "Rails, Ruby, CSS, HTML",
#   type: "Rails"
# )

# coupon_codes = Project.create!(
#   title: "Market Money",
#   description: "Backend Rails API application",
#   git_repo: "https://github.com/mel-langhoff/market_money",
#   demo_link: "",
#   tech: "Rails, Ruby",
#   type: "Rails"
# )
