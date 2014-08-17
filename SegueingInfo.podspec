Pod::Spec.new do |s|

  s.name         = "SegueingInfo"
  s.version      = "1.0.0"
  s.summary      = "Simple way to pass data between segueing View Controllers."

  s.description  = <<-DESC
**SegueingInfo** provides a simple interface, category, and class for passing data between segueing *UIViewController*s in iOS *UIStoryboard*s using the `sender` parameter of the `performSegueWithIdentifier:sender:` selector.
                   DESC

  s.homepage     = "https://github.com/yoiang/SegueingInfo"

  s.license      = "MIT"
  
  s.author             = { "Ian G" => "yo.ian.g@gmail.com" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/yoiang/SegueingInfo.git", :tag => "1.0.0" }

  s.source_files  = "SegueingInfo", "SegueingInfo/**/*.{h,m}"

  s.requires_arc = true

end