

  file = File.new('blog.html', 'a')
    file.write("<html> <head> <link rel = 'stylesheet' type = 'text/css' href = '/css/cssfile.css'> <title> Where's your favorite place to be ? </title> </head> <body>")
    loop = true
    while loop do
      puts "What will be the title of your post? "
      h1 = gets.chomp
      puts "Please begin describe why this is your favorite place. "
      p = gets.chomp
      puts "Enter a URL Link that relates with your favorite place"
      img = gets.chomp
      file.write("<h1> #{h1} </h1> <br> <p> #{p} </p> <br> <img src='#{img}' height='40' width='40'>")
      puts "Continue to write another post, or type 'no' to exit"
      again = gets.chomp
      if again == "no"
        loop = false
      end
    end
    file.write("</body> </html>")
