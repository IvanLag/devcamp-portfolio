User.create!(
  email: "test@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Admin User",
  roles: "site_admin"
)
puts "1 admin user created"


User.create!(
  email: "test2@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Regular User",
)
puts "1 regular user created"



3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog}",
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
		topic_id: Topic.last.id
    )
end


puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Ruby #{skill}",
    percent_utilized: 22
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Ruby on Rails",
    subtitle: "Praesent finibus fringilla nulla in elementum.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie tellus nunc, nec ullamcorper nisl volutpat ut. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean consectetur et metus at aliquam. Nulla eu nisi et nibh lobortis fermentum sed vitae sem. Mauris id ultricies odio. Nam diam augue, laoreet et dolor id, mollis tempor libero. In hac habitasse platea dictumst. Morbi congue turpis id odio malesuada sollicitudin. Mauris dapibus massa a ligula mattis mattis. Mauris finibus, tellus ac laoreet tempor, turpis felis tempus erat, nec laoreet lectus leo quis odio. Nam sagittis risus purus, vel dapibus augue feugiat id. Nullam condimentum rhoncus dolor, a placerat dolor tincidunt id. Nunc porta a lacus ut tempus.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Angular",
    subtitle: "Praesent finibus fringilla nulla in elementum.",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie tellus nunc, nec ullamcorper nisl volutpat ut. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean consectetur et metus at aliquam. Nulla eu nisi et nibh lobortis fermentum sed vitae sem. Mauris id ultricies odio. Nam diam augue, laoreet et dolor id, mollis tempor libero. In hac habitasse platea dictumst. Morbi congue turpis id odio malesuada sollicitudin. Mauris dapibus massa a ligula mattis mattis. Mauris finibus, tellus ac laoreet tempor, turpis felis tempus erat, nec laoreet lectus leo quis odio. Nam sagittis risus purus, vel dapibus augue feugiat id. Nullam condimentum rhoncus dolor, a placerat dolor tincidunt id. Nunc porta a lacus ut tempus.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end


puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
    )
end

puts "3 technologies created"