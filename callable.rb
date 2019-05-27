# frozen_string_literal: true

# Callable places a convenience class method on a class that allows it to be
# initialized and invoked with it's call method.
#
module Callable
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  # Class methods to include in our class.
  #
  module ClassMethods
    def call(*args)
      new(*args).call
    end
  end
end
