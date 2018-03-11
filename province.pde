void provinceUpdate() {
  //print(id);
  if (id != null){
    //map_2.clearMarkers();
    switch (int(id)) {
      case 32 :
        //MapUtils.createDefaultEventDispatcher(this, map_2);
        province = GeoJSONReader.loadData(this, "jiangsu.json");
        provinceMarkers = MapUtils.createSimpleMarkers(province);
        location = new Location(32.915,120.0586);
        create(6);
      break;
    
      case 51 :
        //MapUtils.createDefaultEventDispatcher(this, map_2);
        province = GeoJSONReader.loadData(this, "sichuan.json");
        provinceMarkers = MapUtils.createSimpleMarkers(province);
        location = new Location(30.1904,102.9199);
        create(5);
      break; 
      
      case 42 :
        //MapUtils.createDefaultEventDispatcher(this, map_2);
        province = GeoJSONReader.loadData(this, "hubei.json");
        provinceMarkers = MapUtils.createSimpleMarkers(province);
        location = new Location(31.1572,112.2363);
        create(6);
      break; 
      
    }
  }
}

void create(int n)
{
    provinceMarkers = MapUtils.createSimpleMarkers(province);
    manager.clearMarkers();
    manager.addMarkers(provinceMarkers);
    map_2.addMarkerManager(manager);
    map_2.zoomAndPanTo(location, n);
    resetMap(provinceMarkers,color(100,120));
}


