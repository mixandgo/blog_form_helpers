class CustomFormBuilder
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def initialize(_, user, template, options)
    @user = user
    @template = template
    @options = options
  end

  def user_fields
    user_name_field +
    user_email_field
  end

  # This is required
  def multipart?
  end

  private
    def user_name_field(options={})
      content_tag :div, class: "user-name" do
        content_tag(:label, "Name: ", for: :name) +
        content_tag(:input, nil, type: "text", value: @user.name)
      end
    end

    def user_email_field(options={})
      content_tag :div, class: "user-email" do
        content_tag(:label, "Email: ", for: :email) +
        content_tag(:input, nil, type: "text", value: @user.email)
      end
    end
end