require 'placeimg'
require "rails"

class Railtie < Rails::Railtie
  initializer "placeimg.helper" do |app|
    ActionView::Base.send :include, Placeimg::ViewHelpers
  end
end
