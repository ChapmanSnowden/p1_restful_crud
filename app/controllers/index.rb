get '/' do
  # Look in app/views/index.erb
  @notes = Note.all
  erb :index
end

post '/' do
  new = Note.new(title: params[:title], content: params[:content])
  new.save
  redirect '/'
end

