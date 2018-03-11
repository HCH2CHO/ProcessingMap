import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.UnfoldingMap;
import de.fhpotsdam.unfolding.marker.AbstractMarker;
import java.util.List;

UnfoldingMap map_1;
UnfoldingMap map_2;
UnfoldingMap map_3;
HashMap<String, DataEntry> dataEntriesMap;
List<Marker> chinaMarkers;
List<Marker> provinceMarkers;

List<Marker> chinacpMarkers;

List<Feature> province;
Location yinchuanLocation=new Location(38.467,106.267);
Location location;
HScrollbar hs;  //scrollbar
Button bt;
String text_1 = "per to region";
String text_2 = "region to per";
String id = "33";
String newid="42";


ArrayList<cityPoint> citypoint=new ArrayList<cityPoint>();
MarkerManager manager = new MarkerManager();
MarkerManager manager3 = new MarkerManager();

ArrayList<provinceLine> provinceline=new ArrayList<provinceLine>();
String[] perid;//for find data's province

void setup() {
  size(1200, 700, P2D);
  smooth();
  
  hs = new HScrollbar(150, height*11/12, 500, 16);
  bt = new Button(340,height*5/6,120,24,text_1);
  
  map_1 = new UnfoldingMap(this,10,10,800,550);
  map_1.zoomAndPanTo(yinchuanLocation, 4);
  MapUtils.createDefaultEventDispatcher(this, map_1);

  // Load province polygons and adds them as markers
  List<Feature> china = GeoJSONReader.loadData(this, "chinaCapital.json");
  chinaMarkers = MapUtils.createSimpleMarkers(china);
  map_1.addMarkers(chinaMarkers);
 
  map_1.setTweening(true);

  //map.setPanningRestriction(yinchuanLocation, 200 );
  //map.resetPanningRestriction();
  readcitycsv();
  drawcity();
  
  map_2 = new UnfoldingMap(this,820,15,370,330);
  map_2.setTweening(true);
  
  map_3 = new UnfoldingMap(this,820,345,370,330);
  map_3.zoomAndPanTo(yinchuanLocation, 3);
  MapUtils.createDefaultEventDispatcher(this, map_3);
  List<Feature> chinacp = GeoJSONReader.loadData(this, "china.json");
  chinacpMarkers = MapUtils.createSimpleMarkers(chinacp);
  
  map_3.addMarkers(chinacpMarkers);
  map_3.addMarkerManager(manager3);
 
  map_3.setTweening(true);
  
  resetMap(chinacpMarkers,color(255,255,255));
  
  readpopulation();
}

void draw() {
  background(240);
  hs.update();
  hs.display();
  
  map_1.draw();
  pointColorUpdate();

  //bt.mouseClicked();
  bt.display();
  bt.Stringdisplay();
  chinaMapUpdate();
  mouseMoved();
  //provinceDraw();
  map_2.draw();
  //provinceMapUpdate();
  map_3.draw();
}

void mouseClicked() {
    if (bt.overRect()) {
      if(bt.text == text_1)
        bt.text = text_2;
      else if (bt.text == text_2)
        bt.text = text_1;
    }
    Marker marker = map_1.getFirstHitMarker(mouseX, mouseY);
    if (marker != null) 
      id = marker.getId();
    
    if(id != null){
      provinceUpdate();  
    }
    provinceMapUpdate();
 }
 
void mouseMoved() {
  // Deselect all marker
  /*
  for (Marker marker : map_1.getMarkers()) {
    marker.setSelected(false);}
*/
  // Select hit marker
  // Note: Use getHitMarkers(x, y) if you want to allow multiple selection.
  Marker marker = map_1.getFirstHitMarker(mouseX, mouseY);
  if (marker != null) {
    //marker.setSelected(true);
    marker.setColor(color(0,255,255));
  }
  Marker marker2 = map_3.getFirstHitMarker(mouseX, mouseY);
    {
      if (marker2 != null) {
      newid = marker2.getId();

      if(newid != null)
        manager3.clearMarkers();
        drawproline();
      }
    }
  
}
