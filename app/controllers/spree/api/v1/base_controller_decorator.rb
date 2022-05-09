module Spree::Api::V1::BaseControllerDecorator
  if defined?(::Spree::Api::BaseController)
    Spree::Api::BaseController.include(SpreeGlobalize::ControllerGlobalizeHelper)
  end
end

if defined?(::Spree::Api::BaseController)
  ::Spree::Api::BaseController.prepend(Spree::Api::V1::BaseControllerDecorator)
end
