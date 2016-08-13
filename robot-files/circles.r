main(){
	int x,r,d;
	x=0;
	d=damage();
	while(1){
		if(d!=damage()){
			drive(360-x,100);
			d=damage();
			drive(360-x,100);
		}
		x++;
		drive(x,25);
		r=scan(x,2);
		while(r>0 && r<700){
			cannon(x,r);
			x-=1;
			r=scan(x,r%5);
		}
		r=scan(360-x,2);
		while(r>0 && r<700){
			cannon(360-x,r);
			x-=1;
			r=scan(360-x,5);
			drive(360-x,r%5);
		}
		x+=1;
	}
}
