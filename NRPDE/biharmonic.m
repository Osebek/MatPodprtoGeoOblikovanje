function bu = biharmonic(u,x,y,h)

bu = (20*u(x,y)-8*u(x-h,y)+u(x-2*h,y)+2*u(x-h,y+h)-8*u(x,y+h)+u(x,y+2*h)+2*u(x+h,y+h)+2*u(x-h,y-h)-8*u(x,y-h)+u(x,y+2*h)+2*u(x+h,y-h)+u(x+2*h,y+2*h))/h^4;

end