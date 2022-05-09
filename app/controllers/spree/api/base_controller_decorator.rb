module Spree
  module Api
    module BaseControllerDecorator

      spree_version = Gem::Version.new(::Spree::VERSION)

      if spree_version > Gem::Version.new("4.x")
        require_relative 'v2/base_controller_decorator'
      else
        require_relative 'v1/base_controller_decorator'
      end

    end
  end
end
