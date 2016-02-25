class Blog

    def readBlog
        File.open('blogpost.html', 'r') do |title|
            while line = title.gets
                    puts line
            end
        end
    end
end


    def writeBlog(title, description)
        File.open('blog.erb', 'w') do |f2|
            f2.puts.readBlog
        end
    end
