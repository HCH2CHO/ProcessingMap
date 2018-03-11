void chinaMapUpdate () {
  if (bt.text == text_1) {
    // Load GDP data
    dataEntriesMap = loadGDPFromCSV("perGDPdata.csv");
    shadeProvinces_1();
  } else if (bt.text == text_2) {
    // Load GDP data
    dataEntriesMap = loadGDPFromCSV("regionGDPdata.csv");
    shadeProvinces_2();
  }
}

void shadeProvinces_1() {
  for (Marker marker : chinaMarkers) {
    // Find data for province of the current marker
    String provinceId = marker.getId();
    DataEntry dataEntry = dataEntriesMap.get(provinceId);
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

void shadeProvinces_2() {
  for (Marker marker : chinaMarkers) {
    // Find data for province of the current marker
    String provinceId = marker.getId();
    DataEntry dataEntry = dataEntriesMap.get(provinceId);
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

