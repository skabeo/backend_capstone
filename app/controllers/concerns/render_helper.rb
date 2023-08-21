module RenderHelper
    extend ActiveSupport::Concern
  
    def create_helper(value, message)
      if value.save
        render_success({ message: message, data: value })
      else
        render_error(value.errors)
      end
    end
end