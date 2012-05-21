class Magic8BallViewController < UIViewController

  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    #labelFrame = CGRectMake(10, 60, 300, 80)
    #labelFrame = [[10, 60], [300, 80]]
    #@label = UILabel.alloc.initWithFrame(labelFrame)
    #@label = UILabel.alloc.initWithFrame([[10, 60], [300, 80]])
    view.image = UIImage.imageNamed('background.png')

    #@label = UILabel.alloc.initWithFrame([[10, 60], [300, 80]])
    @label = makeLabel
    view.addSubview(@label)

    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:"showAnswer")
    view.addGestureRecognizer(recognizer)

    @magicBall = Magic8Ball.new
  end

  def showAnswer
    #@label.text = ["Yes", "No", "Maybe", "Try again"].sample
    # @label.text = @magicBall.randomAnswer
    # @label.alpha = 0

    UIView.animateWithDuration(1.0,
                              animations: lambda do
                                @label.alpha = 0
                                @label.transform = CGAffineTransformMakeScale(0.1, 0.1)
                              end,
                              completion: lambda do |finished|
                                @label.text = @magicBall.randomAnswer
                                UIView.animateWithDuration(1.0,
                                                           animations: lambda do
                                                             @label.alpha = 1
                                                             @label.transform = CGAffineTransformIdentity
                                                           end)
                              end)
  end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[10, 60], [300, 80]])
    label.backgroundColor = UIColor.lightGrayColor
    label.text = "Загадай вопрос и нажми!"
    label.font = UIFont.boldSystemFontOfSize(18)
    label.textColor = UIColor.darkGrayColor
    label.textAlignment = UITextAlignmentCenter
    label
  end

end