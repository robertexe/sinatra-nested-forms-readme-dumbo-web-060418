require_relative 'config/environment'

class App < Sinatra::Base


	get '/' do
	  erb :new
	end

	post '/student' do
		puts params

		## create an instance of Student taking in params[:student] which is the form
  @student = Student.new(params[:student])

  params[:student][:courses].each do |details|
    Course.new(details)
		redirect to "/"
  end

  @courses = Course.all

  erb :student
	end

end
