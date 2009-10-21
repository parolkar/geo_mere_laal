# Install hook code here        
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
     
    end
 

    
    def welcome_screen
    
    mesg = <<HERE
Congratulations for setting the plugin! There are few things to remember here...

Enjoy!
HERE
 
    puts mesg
    end
