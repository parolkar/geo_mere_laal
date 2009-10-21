# This module contains helper methods geo_mere_laal
module GeoMereLaalHelper
  
 
  def latitude_field(object, method, options={})
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)    
    result << init_gml
    result << "<script> GeoMereLaal.updateLatitude_callback = function(){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",GeoMereLaal.lat())}; </script>"
  end 
  
  def longitude_field(object, method, options={})
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml 
    result << "<script> GeoMereLaal.updateLongitude_callback = function(){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",GeoMereLaal.lng())}; </script>"
  end   
  
  
  def full_address_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateFullAddress_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end
  
  def country_name_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateCountryName_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end
  
  def country_code_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateCountryCode_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end   
  
  def state_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateState_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end 
  
  def city_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateCity_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end   
  
  def locality_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateLocality_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end
  
  def street_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updateStreet_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end 
  
  def postal_code_field(object, method, options={}) 
    it =   ActionView::Helpers::InstanceTag.new(object.to_s.dup, method, self)
    result = it.to_input_field_tag("text", options)  
    result << init_gml_rc 
    result << "<script> GMLReverseCoder.updatePostalCode_callback = function(resp_value){ document.getElementById(\"#{it.object_name.to_s+'_'+it.method_name.to_s}\").setAttribute(\"value\",resp_value)}; </script>"
  end
  
  
   
  def init_gml    
      result = ""
      if !@gml_initialised
        result << GeoMereLaal.init
        result << "<script> old_onload = window.onload; window.onload = function() { if(GeoMereLaal.isBrowserCompatible()){ GeoMereLaal.request(); } if(typeof old_onload == \"function\"){old_onload();}} </script>"   
         @gml_initialised ||= true
      end  
      result
  end 
  def init_gml_rc
       result = ""
       if !@gml_rc_initialised
         result << init_gml 
         result << "<script>  if(GeoMereLaal.isBrowserCompatible()){  GeoMereLaal.reverseCoderHook = function(){ GMLReverseCoder.request(GeoMereLaal); } } </script>"   
         @gml_rc_initialised  ||= true
       end  
       result
  end
  
end