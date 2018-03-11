import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.marker.AbstractMarker;
class cityPoint{
 String citynum;
 float attraction;
 Location cityloc;
 SimplePointMarker citypointmarker;
 
 void mark()
 {
   citypointmarker=new SimplePointMarker(cityloc);
   //print(cityloc);
   citypointmarker.setColor(color(255,255,255));
   map_1.addMarkers(citypointmarker);
 }
 
 void pcolor(){
   if(hs.spos == hs.xpos+hs.swidth*4/5){
   float alph = map(attraction, 0,10, 0, 255);
   citypointmarker.setColor(color(int(255-alph),255,int(255-alph)));
   }
   else{
     citypointmarker.setColor(color(255,255,255));
   }
 }
}
