class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to your sorting algorithm app"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.save
    when 3 then @controller.read
    when 4 then @controller.mark_read
    when 5 then stop
    else
      puts "Please press 1, 2, 3, 4 or 5"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List available sorting algorithms"
    # puts "2 - Save post for later"
    # puts "3 - Read post"
    # puts "4 - Mark post as read"
    puts "5 - Exit"
  end
end
