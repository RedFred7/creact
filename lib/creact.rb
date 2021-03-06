require "creact/version"
require "creact/file_handlers"
require 'opal'


module Creact
  def loader
    opal = Opal::Server.new {|s|
      s.append_path 'js'
      s.main = 'app'
    }
    opal_boot_code = Opal::Processor.load_asset_code(opal.sprockets, 'react')
  end

  
end
