ArrayList<particle> particles; // array list of particles
float d; // distance variable

void setup(){
    size(600,600);
    particles = new ArrayList<particle>();
 
}

void draw(){

  // enhanced for loop
  
  for(particle p : particles){
     p.update();   
     for(particle p2 : particles)
        if(p2 != p){ // if p2 and p are not the same particle
          d = dist(p.pos.x,p.pos.y,p2.pos.x,p2.pos.y); // calculate distance between them 
          if(d < 70 ){  // draw line if condition is satisfied
            stroke(p.col);
            line(p.pos.x,p.pos.y,p2.pos.x,p2.pos.y);
          }
        }
}

 // if the particle has travelled a distance of 80 from its initial position then delete it
  for( int i = 0 ; i < particles.size() ; i++){
    d = dist(particles.get(i).pos.x,particles.get(i).pos.y,particles.get(i).init_pos.x,particles.get(i).init_pos.y);
           if( d > 80 )
             particles.remove(i); 
  }

 // to create fade effect
  fill(0,25);
  rect(-1,-1,width+1,height+1);
}

void mouseDragged(){
 particles.add(new particle());   // new particle added whenever the mouse is dragged
}
