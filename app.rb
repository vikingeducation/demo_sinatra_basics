require 'sinatra'

get '/name_form' do
  erb :name_form
end

# This is a totally different request
#   than the GET version above!
post '/name_form' do
  
  # Grab the data we submitted from the form
  #   using the awesome `params` hash
  my_name = params[:name]

  # Send that data to our view template explicitly
  #   as the `name` variable
  erb :show_name, locals: { name: my_name }

end