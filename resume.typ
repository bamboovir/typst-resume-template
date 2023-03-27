#import "templates/awesome/template.typ": *

#show: resume.with(
  author: (
      firstname: "Aaaaaaa", 
      lastname: "Aaa",
      email: "aaaaaaaaaa@aaaaa.aaa", 
      phone: "(+1) 0000000000",
      github: "aaaaaaaaa",
      linkedin: "aaaaaaaa",
      positions: (
        "Aaaaaaaa Aaaaaaaa",
        "Aaaa Aaaaa Aaaaaaaaa",
      )
  ),
  //TODO: https://github.com/typst/typst/issues/204
  date: "Aaaaa 00, 0000"
)

#resume_section("Education")

#education_item[
  University of Aaaaaaaa Aaaaaaa-Aaaaaaaaa
][
  Master of Computer Science
][
  #resume_gpa("4.00", "4.00")
][
  Aug. 0000 - Aug. 0000
]

#education_item[
  University of Aaaaaaaa-Aaaaaaa
][
  B.S. in Computer Science
][
  #resume_gpa("4.00", "4.00")
][
  Aug. 0000 - Aug. 0000
]

#resume_section("Work & Research Experience")

#work_experience_item_header(
  "Aaaaaa Aaaaaaaa",
  "Aaaaaa Aaaaa Aaaaa, AA",
  "Software Engineer",
  "Jul. 0000 - Jul. 0000",
)

#resume_item[
  - *#lorem(10)*. #lorem(20)
  - #lorem(30)
  - #lorem(40)
  - #lorem(30)
]

#work_experience_item_header(
  "Aaaaaa Aaaaaaaa",
  "Aaaaaa Aaaaa Aaaaa, AA",
  "Software Engineer",
  "Jul. 0000 - Jul. 0000",
)

#resume_item[
  - *#lorem(10)*. #lorem(20)
  - #lorem(30)
  - #lorem(40)
  - #lorem(30)
]

#resume_section("Personal Project")

#personal_project_item_header(
  "Aaaaaaa Aaaa",
  "Aaaaaa, AA",
  "AAAAAAA",
  "Feb. 0000",
)

#resume_item[
  - #lorem(30)
]

#personal_project_item_header(
  "Aaaaaaa Aaaa",
  "Aaaaaa, AA",
  "AAAAAAA",
  "Feb. 0000",
)

#resume_item[
  - #lorem(30)
]

#resume_section("Skills")

#skill_item(
  "Program Language",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    strong[Aaaa],
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaa", 
    "Aaaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaa", 
    "Aaaaa"
  )
)

#skill_item(
  "Back-End",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    "Aaaaaa", 
    "Aaaaaaa", 
    "Aaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
  )
)

#skill_item(
  "Front-End",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    "Aaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
  )
)

#skill_item(
  "DevOps",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    strong[Aaaa],
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaaaaa", 
  )
)
