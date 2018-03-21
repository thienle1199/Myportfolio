3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
)
end
10.times do |blog|
  Blog.create!(
    title: Faker::SiliconValley.invention,
    body: Faker::SiliconValley.quote,
    topic_id: Topic.last.id)
end

puts '10 blog posts created'
5.times do |skill|
  Skill.create!(
    title: Faker::ProgrammingLanguage.name,
    percent_utilized: rand(30..100)
  )
end
puts '5 times skill created'

9.times do |portfolio_item|
  Portfolio.create!(
    title: Faker::Job.title,
    subtitle: Faker::Job.field,
    body: Faker::SiliconValley.quote,
    main_image: Faker::Placeholdit.image("600x400"),
    thumb_image: Faker::Placeholdit.image("350x150")
  )
puts '9 portfolio items created'
end
3.times do |tech|
  Technology.create!(
    name: "Technology #{tech}",
    portfolio_id: Portfolio.last.id
  )
end
puts '3 technologies created'
