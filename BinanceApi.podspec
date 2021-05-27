
Pod::Spec.new do |s|
  s.name             = 'BinanceApi'
  s.version          = '0.0.2'
  s.summary          = 'A lightweight client lib for Binance.com'


  s.description      = <<-DESC
BinanceApiClient is a lightweight client lib for Binance.com,
 which fullfill all the APIs provided by [Binance](https://www.binance.com/restapipub.html).
                       DESC

  s.homepage         = 'https://github.com/dpyro/BinanceApi'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quangmv' => 'quang.app@gmail.com' }
  s.source           = { :git => 'https://github.com/quangmv/BinanceApi.git', :branch => 'master' }

  s.ios.deployment_target = '13.0'

  s.source_files = 'BinanceApi/**/*'

  s.public_header_files = 'BinanceApi/**/*.h'
  s.frameworks = 'CoreFoundation'

  s.dependency 'Alamofire', '~> 5.0.0'

  s.requires_arc = true
end
