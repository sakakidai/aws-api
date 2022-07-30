Faker::Config.locale = 'en'

30.times do |n|
  title = Faker::Lorem.sentence
  body = Faker::Lorem.paragraph_by_chars
  Post.create!(title: title, body: body)
end

puts "post = #{Post.count}"