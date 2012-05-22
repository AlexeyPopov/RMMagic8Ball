$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-testflight'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Magic 8-Ball'
  app.icons << "icon.png"
  app.testflight.sdk = 'vendor/TestFlightSDK'
  app.testflight.api_token = 'dd8e0d0e692a628ae03a151837add544_NDUxNTg5MjAxMi0wNS0yMiAwNzoxODozNy4xOTkxODE'
  app.testflight.team_token = '184b6c04e7ebde58684868a6417c2eb7_OTI0ODQyMDEyLTA1LTIyIDA3OjMxOjU4Ljk0NjY0Ng'
  app.testflight.distribution_lists = ['My friends']
end
