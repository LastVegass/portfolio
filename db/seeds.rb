#frozen_string
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Somthing")
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 75
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Resume.create!(
    title: "Portfolio title #{portfolio_item}" ,
    subtitle: "My great service",
    body: "Something",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/300x200"
  )
end

puts "9 portfolio items created"
