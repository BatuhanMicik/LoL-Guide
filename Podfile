# Uncomment the next line to define a global platform for your project
# platform :ios, '11.0'


target 'LoL Guide' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
 
  pod 'Kingfisher', '~> 7.0'
  
  
  post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
    # some older pods don't support some architectures, anything over iOS 11 resolves that
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
    end
  end
end
  

  # Pods for LoL Guide

  target 'LoL GuideTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'LoL GuideUITests' do
    # Pods for testing
  end

end
