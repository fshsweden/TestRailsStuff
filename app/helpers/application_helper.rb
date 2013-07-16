module ApplicationHelper

  #

  def link_to_add_fields(name, f, association)

    # Create a new object the safe way
    new_object = f.object.send(association).klass.new

    id = new_object.object_id

    # make lots of "photo_fields" for ":photos" association
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", {f: builder, show_destroy:true})
    end

    # link to nothing! but Javascript function in form_helper.js will catch the call and use the DATA
    link_to(name,
            '#',
            class: "add_fields",
            data: {
                id: id,
                fields: fields.gsub("\n", "")
            }
    )
  end

end
