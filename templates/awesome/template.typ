// const color
#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")

// layout utility
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let resume(author: (:), date: "", body) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Source Sans Pro"),
    lang: "en",
    size: 11pt,
    fill: color_darknight,
    fallback: false
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer: [
      #set text(fill: gray, size: 8pt)
      #justify_align_3[
        #smallcaps[#date]
      ][
        #smallcaps[
          #author.firstname
          #author.lastname
          #sym.dot.c
          #"Résumé"
        ]
      ][
        #counter(page).display()
      ]
    ],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  let name = {
    align(center)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 32pt, style: "normal", font: ("Roboto"))
          #text(weight: "thin")[#author.firstname]
          #text(weight: "bold")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular"
    )
    align(center)[
      #smallcaps[
        #author.positions.join(
          text[#"  "#sym.dot.c#"  "]
        )
      ]
    ]
  }

  let contacts = {
    set box(height: 11pt)
    
    let linkedin_icon = box(image("assets/icons/linkedin.svg"))
    let github_icon = box(image("assets/icons/square-github.svg"))
    let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
    let phone_icon = box(image("assets/icons/square-phone-solid.svg"))
    let separator = box(width: 5pt)
    
    align(center)[
      #block[
        #align(horizon)[
          #phone_icon
          #box[#text(author.phone)]
          #separator
          #email_icon
          #box[#link("mailto:" + author.email)[#author.email]]
          #separator
          #github_icon
          #box[#link("https://github.com/" + author.github)[#author.github]]
          #separator
          #linkedin_icon
          #box[
            #link("https://www.linkedin.com/in/" + author.linkedin)[#author.linkedin]
          ]
        ]
      ]
    ] 
  }

  name
  positions
  contacts
  body
}

// general style
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "regular"
  )
  align(left)[
    #smallcaps[
      // #text[#title.slice(0, 3)]#strong[#text[#title.slice(3)]]
      #strong[#text[#title]]
    ]
    #box(width: 1fr, line(length: 100%))
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(weight: "light", style: "italic", size: 9pt)
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "light")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 12pt, style: "italic", weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "italic", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// sections specific components
#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let work_experience_item_header(
  company,
  location,
  position,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#company]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let personal_project_item_header(
  name,
  location,
  position,
  start_time,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_time[#start_time]
    ]
  ]
}

#let skill_item(category, items) = {
  set block(below: 0.65em)
  set pad(top: 5pt)
  
  pad[
    #grid(
      columns: (18fr, 80fr),
      gutter: 10pt,
      align(right)[
        #resume_category[#category]
      ],
      align(left)[
        #set text(size: 11pt, style: "normal", weight: "light")
        #items.join(", ")
      ],
    )
  ]
}
