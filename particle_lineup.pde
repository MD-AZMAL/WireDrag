ArrayList<particle> particles;
float d;

void setup(){
    size(600,600);
    particles = new ArrayList<particle>();
 
}

void draw(){
  for(particle p : particles){
     p.update();   
     for(particle p2 : particles)
        if(p2 != p){
          d = dist(p.pos.x,p.pos.y,p2.pos.x,p2.pos.y);
          if(d < 70 ){
            stroke(p.col);
            line(p.pos.x,p.pos.y,p2.pos.x,p2.pos.y);
          }
        }
}
  
  for( int i =0 ; i < particles.size() ; i++){
    d = dist(particles.get(i).pos.x,particles.get(i).pos.y,particles.get(i).init_pos.x,particles.get(i).init_pos.y);
           if( d > 80 )
             particles.remove(i); 
  }
  
  fill(0,25);
  rect(-1,-1,width+1,height+1);
}

void mouseDragged(){
 particles.add(new particle());  
}