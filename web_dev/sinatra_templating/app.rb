# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end


get '/students/new' do
  erb :new_student
end

get '/campus/new' do
  erb :campus
end
get '/campus_list' do
  # @campus =db.execute("SELECT * FROM students")
  @campus = db.execute("SELECT * FROM students WHERE campus = ?",[params['campus']])
  erb :campuses
end


post '/campus' do
  # db.execute("SELECT * FROM students")
  # db.execute("SELECT name FROM students WHERE campus=?",[params['campus']])
  redirect '/campus_list'
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources