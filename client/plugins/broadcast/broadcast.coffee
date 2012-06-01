window.plugins.broadcast =
  emit: (div, item) ->

    $("head").append($("""<link rel='stylesheet' href="http://localhost:1986/lib/bootstrap/css/bootstrap.css" type="text/css" />"""))
    $("head").append($("""<link href="lib/bootstrap/css/bootstrap-responsive.css" rel="stylesheet>"""))
    $("head").append($("""<link href="theme/granite.css" rel="stylesheet>"""))
    $("head").append($("""<link href="broadcast.css" rel="stylesheet>"""))

    $.getScript 'http://localhost:1986/broadcast.js', (data, textStatus, jqxhr) ->
      broadcast.url = 'http://localhost:1986';
      $('head').append($('<link href="'+broadcast.url+'/lib/bootstrap/css/bootstrap.css" rel="stylesheet" />'))
      $('head').append($('<link href="'+broadcast.url+'/lib/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />'))
      $('head').append($('<link href="'+broadcast.url+'/broadcast.css" rel="stylesheet>'))
      $.getScript(broadcast.url+'/socket.io/socket.io.js')
      $.getScript(broadcast.url+'/lib/bootstrap/js/bootstrap.min.js')
      $.getScript(broadcast.url+'/util.js')
      $.getScript(broadcast.url+'/view.js')
      $.getScript(broadcast.url+'/controller.js')
    


    div.append """
      <img alt="Wildhorse Lake" src="http://localhost:1986/test.png" /> <br/>
      not in a paragraph
      <p>
        In a paragraph.
      </p>      

      <!-- online accordion -->
      <div class="accordion" id="broadcast-online">
        <div class="accordion-group" id="broadcast-online-tmpl">
          Retrieving data from server...
        </div>
      </div>

      <!-- broadcasts accordion -->
      <div class="accordion" id="broadcasts"></div> """

  bind: (div, item) ->
    console.log 'i bound something'
 