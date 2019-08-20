require 'first_jruby_gem/version'
# My First Jruby gem module
module FirstJrubyGem
  # Provides methods to say hello
  class SayHello
    # Returns Hello followed by the specified name.
    # @param name [String] the name
    # @return [String] the resulting hello string
    def hello(name)
      "Hello #{name}"
    end
  end
end
