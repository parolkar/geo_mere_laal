# Author: Abhishek Parolkar     


 def welcome_screen
  
  mesg = <<HERE
Congratulations for setting up GeoMereLaal plugin!.
You can find latest information about the plugin by visiting http://wiki.github.com/parolkar/geo_mere_laal
Enjoy!      
Author: Abhishek Parolkar (abhishek[at]parolkar.com)
HERE

  puts mesg
  end




files_to_be_copied = [
  {:source => "/vendor/plugins/geo_mere_laal/config/geo_mere_laal.rb", :target => "/config/initializers/geo_mere_laal.rb" }
  ]
      
root = "#{Rails.root}"
FileUtils.mkdir_p("#{root}/config/initializers") unless File.exists?("#{root}/config/initializers")
  files_to_be_copied.each {|ftbc|
    FileUtils.cp_r(root+ftbc[:source], root+ftbc[:target]) #:force => true)
    puts "Created : #{ftbc[:target]}"
  }

welcome_screen
    
