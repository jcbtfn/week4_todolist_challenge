# File: lib/todo_list.rb
class TodoList
    def initialize
        @list = []
    end

    def add(todo) # todo is an instance of Todo
        # Returns nothing
        @list << todo
    end

    def incomplete
        @list.select {|task| not task.done?} 
    end

    def complete
        # Returns all complete todos
        @list.select {|task| task.done?} 
    end

    def give_up!
        # Marks all todos as complete
        @list.each {|task| task.mark_done!}
    end
end