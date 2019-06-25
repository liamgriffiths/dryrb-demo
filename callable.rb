# typed: false
# frozen_string_literal: true

# Callable places a convenience class method on a class that allows it to be
# initialized and invoked with it's call method using "default" initializer
# values.
#
module Callable
  module Mixin
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    module ClassMethods
      def call(*args)
        new.call(*args)
      end
    end
  end
end
