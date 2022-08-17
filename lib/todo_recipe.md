# 1 Test all the methos on the class Todo - adding a task

# 1.1 Create a new task with the Class Todo
task = Todo.new(we pass the task here, we will call it "call string")

# 1.2 We call method task on Class Todo to check it initialized
it should be returned by method task on the Class, so
task.task => "call string"

# 1.3 We check that the completed value is false
task.done? => false

# 1.4 We now mark as complete and check again with the completed value, which should be true

task.mark_done! => completed changes to true
task.done? => true

# 2 Now we check the interaction in between both classes as is the main purpose of the integration spec

# 2.1 Get class Todo ready to interact with TodoList
We create again a few task to try: task1, task2, task3
We can also check the values are the proper ones (but is the same as in point 1)

# 2.2 Mark some tasks as complete to check methods with TodoList
task num 2.mark_done
task num 2.done? should equal true

# 2.3 Create a new object from Class TodoList to work with the tasks
todolist = TodoList.new

# 2.4 We add the tasks from class Todo to class TodoList
todolist.add(task num 1)
todolist.add(task num 2)
todolist.add(task num 3)

# 2.5 Call method incomplete to return incomplete tasks
todolist.incomplete => [task num 1, task num 3]

# 2.6 Call method complete to return completed tasks
todolist.complete => [task num 2]

# 2.7 Try method to complete all the tasks in the list
todolist.give_up! => task num 1, 2 and 3 completed