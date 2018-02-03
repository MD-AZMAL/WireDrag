class particle {
 
    PVector pos,vel,init_pos;
    color col;
    particle(){
      pos = new PVector(mouseX,mouseY);
      init_pos = new PVector(pos.x,pos.y);
      vel = new PVector(random(-3,3),random(-3,3));
      col = color(0,0,random(100,255));
    }
  
    //void display(){
    //   strokeWeight(2);
    //  point(pos.x,pos.y);
    //}
    
    void update(){
      pos.add(vel);
    }
  
  
}