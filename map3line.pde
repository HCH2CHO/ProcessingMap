import java.util.*;
void readpopulation()
{
  BufferedReader reader;
  String reline="0";
  reader=createReader("population.csv");
  
  //reline=reader.readLine();
   try {
      reline = reader.readLine();
      //print(reline);
    } 
    catch (IOException e) {
      reline = null;
    }
    
  String[] list1=split(reline,',');
  perid=Arrays.copyOfRange(list1,3,34);
  //print(perid);
  
  while(reline!=null)
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
    else{
     provinceLine ple=new provinceLine();
     String[] list2=split(reline,',');
     String[] list3=Arrays.copyOfRange(list2,3,34);
     int[] list4=new int[31]; 

     String mid;
     for(int i=0;i<31;i++)
     {
      mid=list3[i];
      list4[i]=int(mid); 
     } 
     ple.pid=list2[1];
     ple.all=int(list2[2]);
     ple.perdata=list4;
     provinceline.add(ple);
    }
  }
  
 for (Marker marker:chinacpMarkers)
 {
   Object locat =marker.getProperty("cp"); 
   String proid=marker.getId();

   for (provinceLine ple:provinceline)
   {
      if (ple.pid.equals(proid) )
      {
          ple.proloc=objectTolocation(locat);
      }      
   }
  }
}

void drawproline()
{

  int xi=0;
  for(int i=0;i<31;i++){
    if(provinceline.get(i).pid.equals(newid))
      xi=i;
  }
  //print(xi);
   for(int j=0;j<31;j++){
     if(provinceline.get(xi).perdata[j]!=0)
       provinceline.get(xi).promark(provinceline.get(j).proloc,j);  
   } 
/*
 for(provinceLine ple:provinceline)
 {
   for(int j=0;j<31;j++){
     if(ple.perdata[j]!=0)
       ple.promark(provinceline.get(j).proloc);  
   } 
 }
*/
}

