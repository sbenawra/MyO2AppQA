require 'calabash-android/operations'
include Calabash::Android::Operations


def page(clazz)
  clazz.new
end


module Calabash
  class Base
    def initialize(world)
      @world = world
    end

    def page(clazz)
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