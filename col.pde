class col{
 
  PVector col; // color variable here x is r, y is g , z is b
  
  col(){
    col = new PVector(0,0,0);
  }
  
  void update(){
    
    int rand = int(random(3)); // random choice to increase r,g or b
    int scale = int(random(150,200)); // choose a random base scale
    if(rand == 0){
      col.x = scale + (col.x + random(5))%(255 - scale);
    }  
    else if(rand == 1){
      col.y = scale + (col.y + random(5))%(255 - scale);
    }
    else{
      col.z = scale + (col.z + random(5))%(255 - scale);
    }
  }
  
}
