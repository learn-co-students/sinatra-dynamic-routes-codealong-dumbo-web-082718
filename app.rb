require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # GET /multiply/:num1/:num2
  #   sends a 200 status code (FAILED - 4)
  #   displays the product of the two numbers in the route (FAILED - 5)
  #   is not hard-coded (FAILED - 6)

  get '/goodbye/:name' do
    # binding.pry
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i * num2.to_i}"
  end

  # Code your final two routes here:

end
