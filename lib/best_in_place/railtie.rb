require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      # BestInPlace::ViewHelpers = ActionView::Base.new({}, {}, "")
      BestInPlace::ViewHelpers = ActionView::Base.new(ActionView::LookupContext.new(ActionController::Base.view_paths), {}, "")
    end
  end
end
