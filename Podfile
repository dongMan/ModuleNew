source 'https://github.com/CocoaPods/Specs.git'
install! 'cocoapods', :deterministic_uuids => false
install! 'cocoapods', :disable_input_output_paths => true

platform :ios, '11.0'
inhibit_all_warnings!
use_frameworks!

target 'DXJItem' do

#要先加基础模块，这样子模块MTestA、MTestB等的podspec中的依赖 s.dependency 'MBasis/SubBasis' 才能加进来
  pod 'MBasis', :path => "MBasis/MBasis.podspec"

  pod 'MTestA', :path => 'MTestA/MTestA.podspec'
  pod 'MTestB', :path => 'MTestB/MTestB.podspec'
  pod 'MTestC', :path => 'MTestC/MTestC.podspec'

end

