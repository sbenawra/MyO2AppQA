require 'calabash-android/operations'
include Calabash::Android::Operations


def page(clazz)
  puts "defining a new base.rb class"
  clazz.new
end


module Calabash
  class Base
    def initialize(world)
      @world = world
    end

    def page(clazz)
      puts "defining a new base.rb class from Base and module Calabash"
      clazz.new
    end

    def embed(*args)
      @world.embed(*args)
    end

    def step(*args)
      @world.step(*args)
    end
  end
end