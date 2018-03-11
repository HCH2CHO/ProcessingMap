import de.fhpotsdam.unfolding.geo.*;
class provinceLine{
  String pid;
  int[] perdata;
  int all;
  Location proloc;
  SimpleLinesMarker prolinemarker;
  
  void promark(Location target,int j)
  {
    prolinemarker=new SimpleLinesMarker(proloc,target);
    
    manager3.addMarker(prolinemarker);
    prolinemarker.setStrokeWeight(2);
    
    if(perdata[j]>0){
      float transparency = map(perdata[j], 0, 100000,  100, 240);
      prolinemarker.setColor(color(255, 255-transparency, 255-transparency));
    }
    else{
            float transparency = map(-perdata[j], 0, 100000,  100, 240);
      prolinemarker.setColor(color(255-transparency, 255-transparency,255));
    }

    
    //manager3.clearMarkers();
  }
}
