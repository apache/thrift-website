
  $(function() {
    // decorate section headers with anchors
    return $("h2, h3, h4, h5, h6").each(function(i, el) {
      var $el, icon, id;
      $el = $(el);
      id = $el.attr('id');
      icon = '¶';
      if (id) {
        return $el.append($("<a />").addClass("headerlink").attr("href", "#" + id).html(icon));
      }
    });
  });

