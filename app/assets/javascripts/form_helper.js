jQuery(function () {

    /* The following code handles this kind of link: */
    /* link_to(name, '#', class: "remove_fields", data: {id: id, fields: fields.gsub("\n", "")}) */

    $('form').on('click', '.remove_fields', function (event) {

        // alert("form_helper.js = remove fields");

        $(this).prev('input[type=hidden]').val('1');    /* internal signal for deletion */

        $(this).closest('fieldset').hide();             /* hide the fieldsset from user */

        return event.preventDefault();
    });


    /* The following code handles this kind of link: */
    /* link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")}) */

    return $('form').on('click', '.add_fields', function (event) {

        // alert("form_helper.js = add fields");

        var regexp, time;
        //alert("form_helper.js = add fields");
        time = new Date().getTime();

        regexp = new RegExp(
            $(this).data('id'), 'g'
        );

        $(this).before(
            $(this).data('fields').replace(regexp, time)
        );

        return event.preventDefault();
    }
    );
});

