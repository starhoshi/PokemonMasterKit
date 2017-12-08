Pod::Spec.new do |s|
  s.name               = "PokemonMasterKit"
  s.version            = "0.0.2"
  s.summary            = "Pokemon Utility Library"
  s.description        = "Pokemon Utility Library written in Swift."
  s.homepage           = "https://github.com/starhoshi/PokemonMasterKit"
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "star__hoshi" => "kensuke1751@gmail.com" }
  s.social_media_url   = "https://twitter.com/star__hoshi"
  s.platform           = :ios, "10.0"
  s.source             = { :git => "https://github.com/starhoshi/PokemonMasterKit.git", :tag => s.version.to_s }
  s.source_files       = "PokemonMasterKit/**/*.{swift}"
end

