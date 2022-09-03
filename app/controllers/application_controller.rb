class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #GET PORTION
  get '/students' do
    all_students = Student.all
    all_students.to_json
  end

  get '/teachers' do
    all_teachers = Teacher.all
    all_teachers.to_json
  end

  get '/courses' do
    all_courses = Course.all
    all_courses.to_json
  end

  #POST PORTION
  post '/students' do
    send_it = Student.create(
      name: params[:name],
      race: params[:race],
      planet: params[:planet],
      course_id: params[:course_id],
      teacher_id: params[:teacher_id]
    )
    send_it.to_json
  end

  post '/courses' do
    send_it = Course.create(
      course_name: params[:course_name],
      fees_amount: params[:fees_amount],
      department: params[:department],
      course_period: params[:course_period],
      total_units: params[:total_units]
    )
    send_it.to_json
  end

  post '/teachers' do
    send_it = Teacher.create(
      name: params[:name],
      street_address: params[:street_address],
      specialisation: params[:specialisation],
      salary: params[:salary]
    )
    send_it.to_json
  end

  #PATCH PORTION
  patch '/students/:id' do
    fix_it = Student.find(params[:id])
    review.update(
      name: params[:name],
      planet: params[:planet]
    )
    fix_it.to_json
  end

  patch '/courses/:id' do
    fix_it = Course.find(params[:id])
    fix_it.update(
      course_name: params[:course_name],
      fees_amount: params[:fees_amount],
      department: params[:department],
      course_period: params[:course_period],
      total_units: params[:total_units]
    )
  end

  patch '/teachers/:id' do
    fix_it = Teacher.find(params[:id])
    fix_it.update(
      name: params[:name],
      street_address: params[:street_address],
      specialisation: params[:specialisation],
      salary: params[:salary]
    )
    fix_it.to_json
  end

  #DELETE PORTION
  delete '/students/:id' do
    yeeted = Student.find(params[:id])
    yeeted.destroy
    yeeted.to_json
  end

  delete '/teachers/:id' do
    yeeted = Teacher.find(params[:id])
    yeeted.destroy
    yeeted.to_json
  end

  delete '/courses/:id' do
    yeeted = Course.find(params[:id])
    yeeted.destroy
    yeeted.to_json
  end
  
end
