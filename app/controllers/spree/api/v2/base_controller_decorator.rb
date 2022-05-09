module Spree::Api::V2::BaseControllerDecorator
  if defined?(::Spree::Api::V2::BaseController)
    Spree::Api::V2::BaseController.include(SpreeGlobalize::ControllerGlobalizeHelper)
  end
end

if defined?(::Spree::Api::V2::BaseController)
  ::Spree::Api::V2::BaseController.prepend(Spree::Api::V2::BaseControllerDecorator)
end
