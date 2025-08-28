Pod::Spec.new do |s|  
    s.name              = "serasa-idf-liveness3d-ios"
    s.version           = "3.0.11"
    s.summary           = "Soluções de biometria facial utilizando componente FaceTec"
    s.homepage          = "https://github.com/brscan/serasa-idf-liveness3d-ios"

    s.author            = { "Celso Junio" => "celsoj18@gmail.com"}
    s.license           = "MIT"

    s.platform          = :ios, "12.0"
    s.source            = { :git => 'https://github.com/brscan/serasa-idf-liveness3d-ios.git', :tag => s.version.to_s }

    s.resource_bundles = {
     'brscan-sdk-liveness3d-ios-resources' => ['resources/*/*.{png,ttf,plist}'] 
    }

    s.ios.vendored_frameworks = "serasa_idf_liveness3d_ios.xcframework", "FaceTecSDK.xcframework"
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	

end 
