require 'sqlite3'

#create a database
db =SQLite3::Database.new("todo_list.db")

#create a table in database
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS todo_list(
    id INTEGER PRIMARY KEY,
    items VARCHAR(255),
    day VARCHAR(255),
    status BOOLEAN
    )
  SQL

# create the table
db.execute(create_table_cmd)

#insert data to table
def insert_data(db,items,day,status)
  db.execute("INSERT INTO todo_list (items,day,status) VALUES (?,?,?)",[items,day,status])
end

#delete an item from table
def delete_items(db,items)
  db.execute("DELETE FROM todo_list WHERE items = ?",[items])
end

#update the item status
def update_item(db,items)
  db.execute("UPDATE todo_list SET status='true' WHERE items=?",[items])
end

#drop the table
def drop_table(db)
  db.execute("DROP TABLE todo_list")
end

# enter data
def get_data(db)
  puts "Enter item you need to do"
  items = gets.chomp
  puts "Enter day you need to do it"
  day = gets.chomp
  puts "Have you finished your task? true or false"
  status = gets.chomp

  insert_data(db,items,day,status)
end

def print_table(db)
  data =db.execute("SELECT items,day,status FROM todo_list")
  data.each do |item|
    p "item:#{item[0]} on day of #{item[1]} is #{item[2]}"
  end
end


puts "\n--- Create your todo list ---\n
1: Add an Item to the list
2: Remove Item from the list
3: Update Item status when you are finished
4: Remove your todo list table
5: View your todo list
6: To quit the program"

validat_status = true
while validat_status
  puts "\n--Enter your option from numbers 1 to 6 to proceed--\n"
  option = gets.chomp.to_i
  if option == 1
    get_data(db)
  elsif option ==2
    puts "which item you want to remove?"
    items=gets.chomp
    delete_items(db,items)
  elsif option ==3
    puts "which item you need to update the status?"
    items=gets.chomp
    update_item(db,items)
  elsif option ==4
    puts "are you sure you want to delete your todo list? yes or no"
    answer=gets.chomp
    if answer == yes
      drop_table(db)
    end
  elsif option ==5
    print_table(db)
  elsif option == 6
    validat_status = false
  else
    puts "ERROR! Enter valid number"
  end
end





