void readcitycsv(){ 
  BufferedReader reader;
  String reline="0";
  reader=createReader("city.csv");
  while (reline!=null)
  {    
    try {
      reline = reader.readLine();
      //print(reline);
    } 
    catch (IOException e) {
      reline = null;
    }
    
    if(reline==null){      
    }
    else
    {
      String[] list=split(reline,',');
      cityPoint cpt=new cityPoint();
      cpt.citynum=list[1];
      cpt.attraction=float(list[2]);
      citypoint.add(cpt);
    }
  }
 }

void drawcity()
{
 for (Marker marker:chinaMarkers)
 {
   Object locat =marker.getProperty("ct");
   
   //String[] locat1=split(locat0,',');

  //print(locat1);
   String cityid=marker.getId();

   for (cityPoint cpt:citypoint)
   {
      if (cpt.citynum.equals(cityid) )
      {
          cpt.cityloc=objectTolocation(locat);
      }
   }
 }  
 for(cityPoint cpt:citypoint)
 {
   cpt.mark();   
 }
}

void pointColorUpdate()
{
   for(cityPoint cpt:citypoint)
 {
   cpt.pcolor();   
 }
}
