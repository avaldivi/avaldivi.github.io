

  f = File.new('blog.html', 'a')
    f.write("<html><head><title>Assignment 3</title></head><body>")
    loop = true
    while loop do
      puts "Please enter a title for your post: "
      h1 = gets.chomp
      puts "Please enter the text of your blog post: "
      p = gets.chomp
      puts "Please enter the URL of an image to go with your post: "
      img = gets.chomp
      f.write("<h1>#{h1}</h1><p>#{p}</p><img src='#{img}'>")
      puts "Would you like to create another post? Type 'no' to exit"
      again = gets.chomp
      if again == "no"
        loop = false
      end
    end
    f.write("</body></html>")
