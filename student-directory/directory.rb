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
    if students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
    #get another name from the user
    name = gets.chomp
    cohort = gets.chomp
  end
  if students.count == 0
    puts "We have no students"
  end
  #return the array of students
  return students
end

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu()
