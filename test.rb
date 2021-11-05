require_relative 'sorting_algorithms'
require_relative 'controller'
require_relative 'router'
require_relative 'view'

controller = Controller.new

router = Router.new(controller)

# Start the app
router.run
