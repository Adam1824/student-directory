# let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "Football", cob: "UK"},
  {name: "Darth Vader", cohort: :november, hobbies: "programming", cob: "UK"},
  {name: "Nurse Ratched", cohort: :november, hobbies: "Football", cob: "UK"},
  {name: "Michael Corleone", cohort: :november, hobbies: "Gaming", cob: "UK"},
  {name: "Alex DeLarge", cohort: :november, hobbies: "Gaming", cob: "UK"},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: "programming", cob: "UK"},
  {name: "Terminator", cohort: :november, hobbies: "programming", cob: "UK"},
  {name: "Freddy Krueger", cohort: :november, hobbies: "Gaming", cob: "UK"},
  {name: "The Joker", cohort: :november, hobbies: "Football", cob: "UK"},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "Gaming", cob: "UK"},
  {name: "Norman Bates", cohort: :november, hobbies: "Gaming", cob: "UK"}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 0
  while i < students.length
    puts "#{i+1}. #{students[i][:name]} (#{students[i][:cohort]} cohort)\n(#{students[i][:hobbies]} - hobbie)(#{students[i][:cob]} - Country Of Birth)"
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  return students
end

#nothing happens until we call the methods
#students = input_students
print_header
print(students)
print_footer(students)
