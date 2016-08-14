/* 
	aim is to make a robot that recognises other robots and behaves
	differently against diferent robots.
*/
int x,r;

int main(){
	x=0;
	while(1){
		if(scan(x,10)>0){cannon(x,scan(x,10));}
		drive(x,25);
		x+=10;
	}
}
