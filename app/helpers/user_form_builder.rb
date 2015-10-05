class UserFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(attribute, options={})
    super(attribute, options.reverse_merge(placeholder: "Your name please"))
  end
end
