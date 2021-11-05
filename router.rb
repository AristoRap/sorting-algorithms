class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts 'Welcome to your sorting algorithm app'
    puts '           --           '

    while @running
      display_tasks
      print `clear`
      @controller.sort
    end
  end

  private

  def stop
    @running = false
  end

  def display_tasks
    puts ''
    puts 'Select an algorithm to proceed'
    puts 'Press \'exit\' to exit the program'
  end
end
