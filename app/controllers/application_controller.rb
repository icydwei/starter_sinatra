class ApplicationController < Sinatra::Base
    set :views, "app/views"

    get '/' do
        erb :home
    end

    get '/about' do
        erb :about
    end

#Course model routes

    get '/courses/new' do
        @students = Student.all
        erb :course_new
    end

    get '/courses' do
        @courses = Course.all
        erb :course_index
    end

    post '/courses' do
        
        redirect "/courses/#{@course.id}"
    end

    get '/courses/:id' do
        @course = Course.find(params[:id])
        erb :course_show
    end

    get '/courses/:id/edit' do

        erb :course_edit
    end
    
    post '/courses/:id' do

        redirect "/courses/#{@course.id}"
    end

    patch 'courses/:id' do

        redirect "/courses/#{@course.id}"
    end

    delete '/courses/:id' do

        redirect "/courses"
    end



#Student model routes

    get '/students/new' do
            
        erb :student_new
    end

    get '/students' do
        @students = Student.all
        erb :student_index
    end

    post '/students' do
        
        redirect "/students/#{@student.id}"
    end

    get '/students/:id' do
        @student = Student.find(params[:id])
        erb :student_show
    end

    get '/students/:id/edit' do

        erb :student_edit
    end

    post '/students/:id' do

        redirect "/students/#{@student.id}"
    end

    patch 'students/:id' do

        redirect "/students/#{@student.id}"
    end

    delete '/students/:id' do

        redirect "/students"
    end


end
