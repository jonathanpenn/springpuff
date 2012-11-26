class MySpringView < TISpringLoadedView
  SCALE_DURATION = 0.1

  attr_accessor :destScale
  attr_accessor :destAlpha

  def self.build
    self.alloc.initWithFrame([[0,0],[60,60]]).tap do |s|
      s.backgroundColor = UIColor.redColor
      s.layer.cornerRadius = 5
      s.layer.masksToBounds = true

      s.springConstant = 500
      s.dampingCoefficient = 15
      s.inheritsPanVelocity = true
      s.destScale = 1
      s.destAlpha = 1
    end
  end

  def simulateSpringWithDisplayLink displayLink
    super

    self.transform = CGAffineTransformMakeScale(destScale, destScale)
    self.alpha = destAlpha
  end

end

