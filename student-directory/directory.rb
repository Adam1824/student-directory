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
  cohort_list = []
  students.each do |student|
    cohort = student[:cohort].to_s
    if !(cohort_list.include?(cohort))
      cohort_list.push(cohort)
    end
  end
  puts cohort_list
  cohort_list.each do |cohort|
    puts "Students from the #{cohort} cohort:"
      students.each do |student|
        if student[:cohort].to_s.include?(cohort)
          puts student[:name]
        end
      end
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
  cohort = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? || !cohort.empty?  do
    if cohort.empty?
      cohort = "november"
    elsif name.empty?
      name = "Student"
    end
    cohort = cohort.to_sym
    #add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
    cohort = gets.chomp
  end
  puts students
  #return the array of students
  return students
end

#nothing happens until we call the methods
students = input_students
#print_header
print(students)
#print_footer(students)
