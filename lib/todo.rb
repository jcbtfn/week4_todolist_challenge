# File: lib/todo.rb
class Todo
    def initialize(task) # task is a string
        # ...
        @task = {"Task" => task, "Completed" => false}
    end

    def task
        # Returns the task as a string
        return @task["Task"]
    end

    def mark_done!
        # Marks the todo as done
        # Returns nothing
        @task["Completed"] = true
    end

    def done?
        # Returns true if the task is done
        # Otherwise, false
        @task["Completed"] ? true : false
    end
end