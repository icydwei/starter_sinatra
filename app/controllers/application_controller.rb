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

        @course = Course.create(name: params[:name])
        @course.update(student_ids: params[:student_ids])

        redirect "/courses/#{@course.id}"
    end

    get '/courses/:id' do
        @course = Course.find(params[:id])
        erb :course_show
    end

    get '/courses/:id/edit' do
        @course = Course.find(params[:id])
        @students = Student.all
        erb :course_edit
    end
    
    patch '/courses/:id' do
        @course = Course.find(params[:id])
        @course.update(student_ids: params[:student_ids])
        @course.update(name: params[:name])
        redirect "/courses/#{@course.id}"
    end

    delete '/courses/:id' do
        @course = Course.find(params[:id])
        @course.destroy
        redirect "/courses"
    end



#Student model routes

    get '/students/new' do
        @courses = Course.all
        erb :student_new
    end

    get '/students' do
        @students = Student.all
        erb :student_index
    end

    post '/students' do
        @student = Student.create(name: params[:name])
        @student.update(course_ids: params[:course_ids])

        redirect "/students/#{@student.id}"
    end

    get '/students/:id' do
        @student = Student.find(params[:id])
        erb :student_show
    end

    get '/students/:id/edit' do
        @student = Student.find(params[:id])
        @courses = Course.all
        erb :student_edit
    end

    patch '/students/:id' do
        @student = Student.find(params[:id])
        @student.update(course_ids: params[:course_ids])
        @student.update(name: params[:name])
        redirect "/students/#{@student.id}"
    end

    delete '/students/:id' do
        @student = Student.find(params[:id])
        @student.destroy
        redirect "/students"
    end


end
