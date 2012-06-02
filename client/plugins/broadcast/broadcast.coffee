window.plugins.broadcast =
  emit: (div, item) ->
    $('head').append($('<link href="http://localhost:1986/broadcast.css" rel="stylesheet">'))
    $.getScript 'http://localhost:1986/broadcast.js'
    
    div.append """
      <div class="accordion" id="broadcast-online">
        <div class="accordion-group" id="broadcast-online-tmpl">
          Retrieving data from server...
        </div>
      </div>
      <div class="accordion" id="broadcasts"></div> """

  bind: (div, item) ->
    console.log 'i bound something'
 