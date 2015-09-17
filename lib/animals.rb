require_relative 'animal'

require_relative 'animals/base'
require_relative 'animals/exceptions'

Dir["#{File.dirname(__FILE__)}/animals/**/*.rb"].each {|f| require f}
