module RenderHelper
  extend ActiveSupport::Concern

  def create_helper(value, message)
    if value.id
      render_success({ message:, data: value }) if value.destroy!
    elsif value.save
      render_success({ message:, data: value })
    else
      render_error(value.errors)
    end
  end
end
