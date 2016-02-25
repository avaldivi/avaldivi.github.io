
  file = File.new('blog.html', 'a')
    file.write("<html>
    <head>
        <link rel = 'stylesheet' type = 'text/css' href = '/css/cssfile.css'>
        <title> How to contact Adrianna </title>
        
    </head>
    <font face='monaco'>
        <body>
            <h1> (Blog); </h1>
               
                <div class ='cssmenu'>
                        <ul>
                           <li class='active'><a href='index.html'><span>Home</span></a></li>
                           <li><a href='projects.html'><span>Projects</span></a></li>
                           <li><a href='resume.html'><span>Resume</span></a></li>
                           <li><a href='ghc.html'><span>Grace Hopper 2015</span></a></li>
                           <li class='last'><a href='contact.html'><span>Contact</span></a></li>
                        </ul>
                    </div>
                
                <div class = 'container'> 
                <h2> :: Where's your favrorite place? ::</h2>")
    loop = true
    while loop do
      puts "What will be the title of your post? "
      h1 = gets.chomp
      puts "Please begin describe why this is your favorite place. "
      p = gets.chomp
      puts "Enter a URL Link that relates with your favorite place"
      img = gets.chomp
      file.write("<h1>
                    #{h1} 
                  </h1>
                  <img src='#{img}' height='300' width='300'/>
                  <br> 
                  <p> #{p} </p> 
                  <br>")
      puts "Continue to write another post, or type 'no' to exit"
      again = gets.chomp
      if again == "no"
        loop = false
      end
    end
    file.write("</body> 
                  </html>")
