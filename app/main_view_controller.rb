class MainViewController < UIViewController
  attr_accessor :starField, :springView, :displayLink

  def self.controller
    alloc.init
  end

  def viewDidLoad
    super
    setupSpringView
    initAudio
  end

  def shouldAutorotate
    false
  end


  #
  # Spring View
  #

  def setupSpringView
    self.springView = MySpringView.build
    springView.restCenter = [CGRectGetMidX(view.bounds),
                             CGRectGetMidY(view.bounds)]
    view.addSubview(springView)
    self.displayLink = CADisplayLink.displayLinkWithTarget(
      self,
      selector:"displayLinkTick:")
    displayLink.addToRunLoop(
      NSRunLoop.currentRunLoop,
      forMode: NSRunLoopCommonModes)
  end


  #
  # Display Link
  #

  def displayLinkTick displayLink
    springView.simulateSpringWithDisplayLink(displayLink)
  end


  #
  # Audio Processing
  #

  def initAudio
    audioManager = Novocaine.audioManager
    audioManager.setInputBlock(-> newAudio_ptr, numSamples, numChannels {
      max = 0
      for i in 0..numSamples do
        f = newAudio_ptr[i].abs
        max = max > f ? max : f
      end

      center = springView.restCenter
      center.y = view.bounds.size.height - 70 - (max * 400)
      springView.restCenter = center
      springView.destScale = 1 + max
      springView.destAlpha = 0.6 + max
    })
  end

end
