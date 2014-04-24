class DropdownSelector < ActionView::Helpers::FormBuilder
  def dropdown_select(method, collection, text_method)
    @template.content_tag(
      :div,
      @template.collection_select(
        @object_name,
        method,
        collection,
        :id,
        text_method,
        {include_blank: true},
        onchange: "this.form.submit_button.click()"
      )
    )
  end
end