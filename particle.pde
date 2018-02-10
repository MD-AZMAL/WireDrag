class particle {
 
    PVector pos,vel,init_pos;
    int con = 0;
    
    // pos : position of particle at each frame from the origin(top-left of window)
    // vel : velocity of particle
    // init_pos : initial/starting position of the particle
    // con : no of connection the particle has
    
    // constructor 
    particle(){
      pos = new PVector(mouseX,mouseY); // initialise position as the co-ordinate of mouse pointer when the object is created
      init_pos = new PVector(pos.x,pos.y);
      vel = new PVector(random(-3,3),random(-3,3)); // random velocity
      col = color(0,0,random(100,255)); // random color
    }

    void update(){
      pos.add(vel); // update position by adding velocity
    }
  
  
}
