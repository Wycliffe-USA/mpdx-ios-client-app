source 'https://cdn.cocoapods.org/'
source 'https://github.com/CruGlobal/cocoapods-specs.git'

platform :ios, '13.0'

use_modular_headers!

def shared_pods

  #pod 'MPDXiOSLib', '~> 0.1.0'
  pod 'MPDXiOSLib', :path => '../mpdx-ios-lib' #development
end

target 'MPDXClientExample' do

    shared_pods
end

target 'MPDXClientExampleTests' do 

    shared_pods
end
