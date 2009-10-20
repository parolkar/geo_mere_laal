# This module contains helper methods geo_mere_laal
module GeoMereLaalHelper
  
 
  def latitude_field(object, method, options={})
    it =   ActionView::Helpers::InstanceTag.new(object.dup, method, self)
    result = it.to_input_field_tag("text", options) 
    result << "<script> GeoMereLaal.updateLatitude_callback = function(){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",GeoMereLaal.lat())}; </script>"
  end 
  
  def longitude_field(object, method, options={})
    it =   ActionView::Helpers::InstanceTag.new(object.dup, method, self)
    result = it.to_input_field_tag("text", options) 
    result << "<script> GeoMereLaal.updateLongitude_callback = function(){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",GeoMereLaal.lng())}; </script>"
  end
   
  
  
  
  
  
end