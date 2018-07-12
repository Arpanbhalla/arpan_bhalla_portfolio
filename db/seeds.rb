3.times do |topic|
  Topic.create!(
      title: "Title #{rand(1..3)}"
  )
end

puts "#{Topic.count} topics created."

10.times do |blog|
  Blog.create!(
          title: "Blog title number #{blog + 1}",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing
                 elit, sed do eiusmod tempor incididunt ut labore et
                 dolore magna aliqua. Ut enim ad minim veniam, quis
                 nostrud exercitation ullamco laboris nisi ut aliquip
                 ex ea commodo consequat. Duis aute irure dolor in
                 reprehenderit in voluptate velit esse cillum
                 dolore eu fugiat nulla pariatur.
                 Excepteur sint occaecat cupidatat non proident,
                 sunt in culpa qui officia deserunt mollit anim id est laborum.",
          topic_id: "#{rand(1..3)}"
          )
end

puts "#{Blog.count} blogs created"

5.times do |skill|
  Skill.create!(
      title: "skill no #{skill + 1}",
      percent_utilized: "#{skill + 10}"
  )
end

puts "#{Skill.count} skills created."

8.times do |portfolio|
  Portfolio.create!(
      title: "Title #{portfolio + 1}",
      subtitle: "Ruby on rails",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing
             elit, sed do eiusmod tempor incididunt ut labore et
             dolore magna aliqua. Ut enim ad minim veniam, quis
             nostrud exercitation ullamco laboris nisi ut aliquip
             ex ea commodo consequat. Duis aute irure dolor in",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
      title: "Title #{portfolio + 1}",
      subtitle: "React",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing
             elit, sed do eiusmod tempor incididunt ut labore et
             dolore magna aliqua. Ut enim ad minim veniam, quis
             nostrud exercitation ullamco laboris nisi ut aliquip
             ex ea commodo consequat. Duis aute irure dolor in",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "#{Portfolio.count} Portfolio created."

3.times do |tech|
  Technology.create!(
      name: "Technology - #{ tech + 1 }",
      portfolio_id: "#{rand(1..3)}"
  )
end

puts "#{Technology.count} Technologies created."
