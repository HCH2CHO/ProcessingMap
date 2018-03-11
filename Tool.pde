void resetMap(List<Marker> listmarker,color col){
  for(Marker marker : listmarker)
  {
   marker.setColor(col); 
  }
}

Location objectTolocation(Object a0)
{
  String a1=a0.toString();
  String[] a2=split(a1,',');
  String[] loc1=split(a2[0],'[');
  String[] loc2=split(a2[1],']');
  Location loc=new Location(float(loc2[0]),float(loc1[1]));
  return loc;
}

HashMap<String, DataEntry> loadGDPFromCSV(String fileName) {
  HashMap<String, DataEntry> dataEntriesMap = new HashMap<String, DataEntry>();

  String[] rows = loadStrings(fileName);
  for (String row : rows) {
    // Reads province name and GDP value from CSV row
    String[] columns = row.split(",");
    if (columns.length >= 7) {
      DataEntry dataEntry = new DataEntry();
      dataEntry.Name = columns[0];
      dataEntry.id = columns[1];
      dataEntry.value_2016 = Float.parseFloat(columns[2]);
      dataEntry.value_2012 = Float.parseFloat(columns[3]);
      dataEntry.value_2008 = Float.parseFloat(columns[4]);
      dataEntry.value_2004 = Float.parseFloat(columns[5]);
      dataEntry.value_2000 = Float.parseFloat(columns[6]);
      dataEntriesMap.put(dataEntry.id, dataEntry);
    }
  }

  return dataEntriesMap;
}
