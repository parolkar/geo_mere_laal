GeoMereLaal   
===========
(जियो मेरे लाल : ji-oo-me-re-laal : "Keep it up baby!")

  GeoMereLaal plugin is all you need to create Location-Aware rails application based on   [W3C Geolocaton API](http://dev.w3.org/geo/api/spec-source.html "W3C draft for geolocation api"). 

Quick Audio Intro: [Thanks to Ruby5 Podcast](http://ruby5.envylabs.com/episodes/22-episode-21-october-23-2009/stories/173-geomerelaal-geolocation-plugin-for-rails "They pronounced जियो मेरे लाल so well")

 
### What's Location-Awareness?
   W3C proposed an API in which internet browsers can have capability to retrieve geo-location of the user via multiple sources (Wifi, LBS, IP, browser cookies) and share it with web apps so that apps can serve content based on user's location.    

### Who supports it? 
<table border="1">
  <tbody>
   <tr>
     <th>Web Browser</th>
     <th>Geolocation API support</th>
   </tr>
   <tr>
   <td>Mozilla Firefox</td>

   <td>supported in <a title="browser support" href="http://www.mozilla.com/en-US/firefox/geolocation/">Firefox 3.5</a> and later 	versions.</td>
	</tr>
	<tr>
	<td>Chrome</td>
	<td>Supports thru <a title="Google gears Geolocation API specification" href="http://code.google.com/apis/gears/api_geolocation.html">Google Gears Geolocation API</a></td>
	</tr>
	<tr>
	<td>Opera</td>
	<td>Supported in nightly builds – <a title="Operal Geolocation supported version - download page" href="http://labs.opera.com/news/2009/03/26/">download from this page</a></td>
	</tr>

	<tr>
	<td>Safari</td>
	<td>Support is <a title="Geolocation API support in Safari" href="http://blogs.computerworld.com/node/14114/print">coming soon</a> in the IPhone’s Safari browser.</td>
	</tr>
	<tr>
	<td>Internet Explorer</td>
	<td>An experimental support available from IE8.</td>
	</tr>            
  </tbody>
</table>



How do I use it?
----------------
### Step 1 : Install
<pre><code> script/plugin install git://github.com/parolkar/geo_mere_laal.git </code></pre> 
### Step 2 : Create form (as you always did but with new helpers) 
Note: You may want to generate Address model this way script/generate model Address street:string locality:string city:string state:string country:string zip:string lat:string lng:string

<pre><code>   

&lt;% form_tag('#') do  -%&gt;
   &lt;%= label :address,&quot;street&quot;,&quot;Street&quot; -%&gt;
   &lt;%= street_field :address, &quot;street&quot; %&gt;    
	
   &lt;%= label :address,&quot;locality&quot;,&quot;Locality&quot; -%&gt;
   &lt;%= locality_field :address, &quot;locality&quot; %&gt;  

   &lt;%= label :address,&quot;city&quot;,&quot;City&quot; -%&gt;
   &lt;%= city_field :address, &quot;city&quot; %&gt;  

   &lt;%= label :address,&quot;state&quot;,&quot;State&quot; -%&gt; 
   &lt;%= state_field :address, &quot;state&quot; %&gt;      

   &lt;%= label :address,&quot;country&quot;,&quot;Country Name&quot; -%&gt;
   &lt;%= country_name_field :address, &quot;country&quot; %&gt;

   &lt;%= label :address,&quot;zip&quot;,&quot;Postal Code&quot; -%&gt;
   &lt;%= postal_code_field :address, &quot;zip&quot; %&gt;
    
&lt;% end %&gt;
</code></pre>
	
### Step 3: ...... there is no step 3 ;-) 
The rendered form will auto fill the content with user's geolocation   

Output
------ 
   
<div class="image">        
          <img src="/parolkar/geo_mere_laal/raw/master/docs/geo_mere_laal.png"/>
</div>

Copyright (c) 2009 Abhishek Parolkar, released under the MIT license
