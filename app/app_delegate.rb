class AppDelegate
  attr_accessor :window, :displayLink

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    window.rootViewController = MainViewController.controller
    window.makeKeyAndVisible
    true
  end

end

