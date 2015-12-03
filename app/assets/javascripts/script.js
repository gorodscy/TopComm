(function ( $ ) {

    $.fn.loadTemplate = function(url, target_filter, object) {
      var target = this
      object = object || {}
      var gett = $.get(url, function(template, textStatus, jqXhr) {
                      $(target).prepend(Mustache.render($(template).filter(target_filter).html(), object))
                    })

      return gett
    };
    $.fn.addObj = function(obj) {
        var clone = $(this).clone()
        $(this).remove()
        obj[clone.attr('id')] = clone.html()
    };
}
( jQuery ));
