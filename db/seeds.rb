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
                 sunt in culpa qui officia deserunt mollit anim id est laborum."
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

9.times do |portfolio|
  Portfolio.create!(
      title: "Portfolio no. #{portfolio + 1}",
      subtitle: "Subtitle no. #{portfolio + 1}",
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