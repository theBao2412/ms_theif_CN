android.net.Uri
android.webkit.WebView
com.google.ads.util.AdUtil
java.util.Collections
java.util.HashMap
java.util.Map
org.json.JSONObject

a

  , a
  , b
  
  static
  
     = ()
    put"/invalidRequest", ()
    put"/loadAdURL", ()
    a = unmodifiableMap
     = ()
    put"/open", ()
    put"/canOpenURLs", ()
    put"/close", ()
    put"/evalInOpener", ()
    put"/log", ()
    put"/click", ()
    put"/httpTrack", ()
    put"/reloadRequest", ()
    put"/settings", ()
    put"/touch", ()
    put"/video", ()
    b = unmodifiableMap
  
  
  a
  
    d"Calling onshow."
    a, "onshow", "{'version': 'afma-sdk-a-v4.1.1'}"
  
  
  a, 
  
    loadUrl"javascript:"
  
  
  a, , 
  
     (!=
    
      a, "AFMA_ReceiveMessage""('""', "");"
      
    
    a, "AFMA_ReceiveMessage""('""');"
  
  
  a, , 
  
    a, "openableURLs", toString()
  
  
  a, , , , 
  
     = b
     (==
    
      e"An error occurred while parsing the message parameters."
      
    
    
     (c
    
       = getHost()
       (==
      
        e"An error occurred while parsing the AMSG parameters."
         = 
      
    
     (==
    
      e"An error occurred while parsing the message."
      
       (equals"launch"
      
        put"a", "intent"
        put"u", get"url"
        remove"url"
         = "/open"
      
       (equals"closecanvas"
      
         = "/close"
      
       (equals"log"
      
         = "/log"
      
      
      
        e"An error occurred while parsing the AMSG: "toString()
         = 
        
         (b
        
           = getPath()
        
        
        
          e"Message was neither a GMSG nor an AMSG."
           = 
        
      
    
     = get
     (==
    
      e"No AdResponse found, <message: "">"
      
    
    a, , 
  
  
  a
  
     (==isHierarchical() {}
     (bc {
      
    
    
  
  
  b
  
    d"Calling onhide."
    a, "onhide", 
  
  
  b
  
     = getScheme()
     (==equals"gmsg" {}
    
    
      
       = getAuthority()
     (==equals"mobileads.google.com");
    
  
  
  c
  
     = getScheme()
    !=equals"admob"
  



/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     a
 * JD-Core Version:    0.7.0.1
 */