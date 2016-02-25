require 'sinatra'

set :public_folder, "public"

=begin
post '/blog/' do
  @title = params['title']
  @description = params['description']
  @submission = Semester.new.incremental_sem(params['title'], params['pescription'].to_i)
  erb :blog
end
=end

post '/blog.html/' do
  @title = params['title']
  @description = params['description']
  File.open('blogpost.html', 'w') do |f|
    f.write params['title']
    f.write params['description']
    html :blog
  end
end