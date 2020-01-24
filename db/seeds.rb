#frozen_string
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Something",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 75
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Resume.create!(
    title: "Portfolio title #{portfolio_item}" ,
    subtitle: "Ruby on Rails",
    body: "Something",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/300x200"
  )
end

1.times do |portfolio_item|
  Resume.create!(
    title: "Portfolio title #{portfolio_item}" ,
    subtitle: "Angular",
    body: "Something",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/300x200"
  )
end

puts "9 portfolio items created"
