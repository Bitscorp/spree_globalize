module Spree::Api::V1::BaseControllerDecorator
  Spree::Api::BaseController.include(SpreeGlobalize::ControllerGlobalizeHelper)
end

::Spree::Api::BaseController.prepend(Spree::Api::V1::BaseControllerDecorator)
