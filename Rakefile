# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'springpuff'
  app.interface_orientations = [:portrait]
  app.info_plist['UIStatusBarHidden'] = true

  app.vendor_project('vendor/TISpringLoadedViews', :static)

  app.pods do
    pod 'Novocaine', :podspec => 'Novocaine.podspec'
  end
end
