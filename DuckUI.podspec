#
# Be sure to run `pod lib lint DuckUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'DuckUI'
    s.version          = '0.3.22'
    s.summary          = 'SwiftUI for UIKit. Kinda. 😉'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    'DuckUI is SwiftUI for UIKit. Kinda. It is an exceptionally simple way to build user interfaces in UIKit. With a declarative Swift syntax that’s easy to read and natural to write, DuckUI works seamlessly with UIKit white resembling to SwiftUI code and design principles.'
    DESC
    
    s.homepage         = 'https://github.com/rebeloper/DuckUI'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'rebeloper' => 'therebeloper@gmail.com' }
    s.source           = { :git => 'https://github.com/rebeloper/DuckUI.git', :tag => s.version.to_s }
    s.social_media_url = 'https://youtube.com/rebeloper'
    
    s.ios.deployment_target = '12.0'
    
    s.source_files = 'Source/**/*.swift'
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "12.0"
    }
    
    # s.resource_bundles = {
    #   'DuckUI' => ['DuckUI/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'ReactiveKit', '~> 3.12.3'
    s.dependency 'Bond', '~> 7.5.0'
    s.dependency 'Layoutless', '~> 0.4.1'
    s.dependency 'TinyConstraints', '~> 4.0.1'
    s.dependency 'RSKPlaceholderTextView', '~> 5.0.1'
    s.dependency 'JGProgressHUD', '~> 2.0.3'
end
