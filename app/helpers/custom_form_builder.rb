class CustomFormBuilder
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def initialize(_, user, template, options)
    @user = user
    @template = template
    @options = options
  end

  def user_name_field(options={})
    content_tag :div, class: "user-fullname" do
      content_tag :input, nil, type: "text", value: @user.name
    end
  end

  def multipart?
  end
end

