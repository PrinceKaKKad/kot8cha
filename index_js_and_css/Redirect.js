function checkEvt(){
    var evTypep=window.performance.getEntriesByType("navigation")[0].type;
       if (evTypep=='reload'){
         window.location.replace("index");
       }
      
}
checkEvt();