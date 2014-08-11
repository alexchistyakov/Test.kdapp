class TestController extends AppController

  constructor:(options = {}, data)->
    options.view    = new TestMainView
    options.appInfo =
      name : "Test"
      type : "application"

    super options, data

do ->

  # In live mode you can add your App view to window's appView
  if appView?
    view = new TestMainView
    appView.addSubView view

  else
    KD.registerAppClass TestController,
      name     : "Test"
      routes   :
        "/:name?/Test" : null
        "/:name?/alexchistyakov/Apps/Test" : null
      dockPath : "/alexchistyakov/Apps/Test"
      behavior : "application"