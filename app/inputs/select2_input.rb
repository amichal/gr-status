class Select2Input < SimpleForm::Inputs::CollectionSelectInput
  def input
    options[:include_hidden] ||= false
    options[:include_blanks] ||= false
    options[:input_html] ||= {}
    options[:collection] ||= []
    options[:input_html][:id] ||= "#{@builder.options[:as]}_#{attribute_name}"
    dom_selector = "##{options[:input_html][:id]}"
    
    if select2_options = options.delete(:select2)
      options[:collection] = [] + Array(@builder.object.send(attribute_name))
    end
    select2_options ||= {}
    select2_options[:multiple] = options[:input_html].delete(:multiple)
    data = options[:collection].map do |item|
      if item.is_a? ActiveRecord::Base
        options[:value_method] ||= :id
        options[:label_method] ||= :name
      elsif item.is_a? String
        options[:value_method] ||= :to_s
        options[:label_method] ||= :to_s
      elsif item.is_a? Array
        options[:value_method] ||= :first
        options[:label_method] ||= :last
      end
      {:id => item.send(options[:value_method]).to_s, :text=> item.send(options[:label_method]).to_s}
    end

    if select2_options[:ajax]
      js = <<-JS
$(#{dom_selector.to_json}).select2({
  multiple: #{select2_options[:multiple].to_json},
  minimumInputLength: 0,
  allowClear: true,
  ajax: {
    quietMillis: 100,
    url: #{select2_options[:ajax][:url].to_json},
    data: function(term, page) {return {q: term};},
    results: function(data, page) {return {results: data};}
  },
  initSelection: function(element, callback) {
    $.get(#{select2_options[:ajax][:init_url].to_json}+$(element).val(), function(data) {
      callback(data);
    })
  }
});
      JS
      template.content_for :jquery do 
        js.html_safe
      end
      @builder.hidden_field(attribute_name, input_html_options.merge(:value => data.map{|d| d[:id]}.join(','))  )
    else
      template.content_for :jquery do 
        "$(#{dom_selector.to_json}).select2();\n".html_safe
      end
      super
    end
  end
end