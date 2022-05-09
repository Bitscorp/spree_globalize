spree_version = Gem::Version.new(::Spree::VERSION)

if spree_version >= Gem::Version.new("4.x")
  require_relative 'v2/base_controller_decorator'
else
  module Spree::Api::BaseControllerDecorator
    Spree::Api::BaseController.include(SpreeGlobalize::ControllerGlobalizeHelper)
  end

  ::Spree::Api::BaseController.prepend(Spree::Api::BaseControllerDecorator)
end
