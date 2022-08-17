require "todo"
require "todo_list"

RSpec.describe "Test for Todo and TodoList Classes, integration" do

    context "We will test all the methods for Todo Class first" do
        it "creates and test all the methods for a new task" do
            task_01 = Todo.new("Finish Lesson 01 exercises and challenges")
            expect(task_01.task).to eq "Finish Lesson 01 exercises and challenges"
            expect(task_01.done?).to eq false
            task_01.mark_done!
            expect(task_01.done?).to eq true
        end
    end

    context "Now we will create more tasks and test the functionality of the Class TodoList" do
        it "creates new methods and test TodoList methods" do
            task_01 = Todo.new("Finish Lesson 01 exercises and challenges")
            expect(task_01.task).to eq "Finish Lesson 01 exercises and challenges"
            task_02 = Todo.new("Write an email to my employer asking information about X")
            expect(task_02.task).to eq "Write an email to my employer asking information about X"
            task_02.mark_done!
            task_03 = Todo.new("Watch some YouTube tutorials about classes")
            expect(task_03.task).to eq "Watch some YouTube tutorials about classes"
            todo_list01 = TodoList.new
            todo_list01.add(task_01)
            todo_list01.add(task_02)
            todo_list01.add(task_03)
            expect(todo_list01.incomplete).to eq [task_01, task_03]
            expect(todo_list01.complete).to eq [task_02]
            todo_list01.give_up!
            expect(todo_list01.complete).to eq [task_01, task_02, task_03]
        end
    end

end
