void provinceMapUpdate () {
  if (id != null) {
   switch (int(id)) {
     //print(id);
     case 42:
       if (bt.text == text_1) {
          // Load GDP data
          dataEntriesMap = loadGDPFromCSV("perGDPhubei.csv");
          //println("Loaded " + dataEntriesMap.size() + " data entries");
          
          shadeCities_1();
         } else if (bt.text == text_2) {
          // Load GDP data
         dataEntriesMap = loadGDPFromCSV("GDPhubei.csv");
         shadeCities_2();
       } 
     break;
     
     case 32:
       //print(id);
       if (bt.text == text_1) {
          // Load GDP data
          dataEntriesMap = loadGDPFromCSV("perGDPjiangsu.csv");
          //println("Loaded " + dataEntriesMap.size() + " data entries");
          shadeCities_1();
       } else if (bt.text == text_2) {
          // Load GDP data
         dataEntriesMap = loadGDPFromCSV("GDPjiangsu.csv");
         shadeCities_2();
       } 
     break;
     
     case 51:
       if (bt.text == text_1) {
          // Load GDP data
          dataEntriesMap = loadGDPFromCSV("perGDPsichuan.csv");
          //println("Loaded " + dataEntriesMap.size() + " data entries");
          
          shadeCities_1();
         } else if (bt.text == text_2) {
          // Load GDP data
         dataEntriesMap = loadGDPFromCSV("GDPsichuan.csv");
         shadeCities_2();
       } 
      break;
    }
  }
}


void shadeCities_1() {
  for (Marker marker : provinceMarkers) {
    // Find data for province of the current marker
    String cityId = marker.getId();
    DataEntry dataEntry = dataEntriesMap.get(cityId);
    if(hs.spos == hs.xpos) {
        if (dataEntry != null && dataEntry.value_2000 != null) {
          // Encode value as brightness (values range: 27643-118198)
          float transparency = map(dataEntry.value_2000, 0, 120000, 0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth/5) {
        if (dataEntry != null && dataEntry.value_2004 != null) {
          // Encode value as brightness (values range: 27643-118198)
          float transparency = map(dataEntry.value_2004, 0, 120000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth*2/5) {
        if (dataEntry != null && dataEntry.value_2008 != null) {
          // Encode value as brightness (values range: 27643-118198)
          float transparency = map(dataEntry.value_2008, 0, 120000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth*3/5) {
        if (dataEntry != null && dataEntry.value_2012 != null) {
          // Encode value as brightness (values range: 27643-118198)
          float transparency = map(dataEntry.value_2012, 0, 120000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else {
        if (dataEntry != null && dataEntry.value_2016 != null) {
          // Encode value as brightness (values range: 27643-118198)
          float transparency = map(dataEntry.value_2016, 0, 120000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    }
  }
}

void shadeCities_2() {
  for (Marker marker : provinceMarkers) {
    // Find data for province of the current marker
    String cityId = marker.getId();
    DataEntry dataEntry = dataEntriesMap.get(cityId);
    if(hs.spos == hs.xpos) {
        if (dataEntry != null && dataEntry.value_2000 != null) {
          // Encode value as brightness (values range: 100-81000)
          float transparency = map(dataEntry.value_2000, 0, 81000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth/5) {
        if (dataEntry != null && dataEntry.value_2004 != null) {
          // Encode value as brightness (values range: 100-81000)
          float transparency = map(dataEntry.value_2004, 0, 81000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth*2/5) {
        if (dataEntry != null && dataEntry.value_2008 != null) {
          // Encode value as brightness (values range: 100-81000)
          float transparency = map(dataEntry.value_2008, 0, 81000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else if (hs.spos == hs.xpos+hs.swidth*3/5) {
        if (dataEntry != null && dataEntry.value_2012 != null) {
          // Encode value as brightness (values range: 100-81000)
          float transparency = map(dataEntry.value_2012, 0, 81000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    } else {
        if (dataEntry != null && dataEntry.value_2016 != null) {
          // Encode value as brightness (values range: 100-81000)
          float transparency = map(dataEntry.value_2016, 0, 81000,  0, 240);
          marker.setColor(color(255, 255-transparency, 255-transparency));
        }  else {
          // No value available
          marker.setColor(color(100, 120));
        }
    }
  }
}
