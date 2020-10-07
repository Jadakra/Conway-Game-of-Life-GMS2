/// @description Insert description here
// You can write your code in this editor
//si existen aledaños, sumarle cada stsatus, despues tomar una decision a partir de la suma

//de izquierda a derecha, de arriba a abajo
//1 2 3 
//4 x 5 
//6 7 8
size = 64;
sum = 0;
var _inst = (instance_place(x-size,y-size, o_Thing)); //1
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x,y-size, o_Thing)); //2
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x+size,y-size, o_Thing)); //3
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x-size,y, o_Thing)); //4
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x+size,y, o_Thing)); //5
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x-size,y+size, o_Thing)); //6
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x,y+size, o_Thing)); //7
if _inst != noone
{
	sum += _inst.state;
}

var _inst = (instance_place(x+size,y+size, o_Thing)); //8
if _inst != noone
{
	sum += _inst.state;
}


/*
Any live cell with fewer than two live neighbours dies, as if by underpopulation.
Any live cell with two or three live neighbours lives on to the next generation.
Any live cell with more than three live neighbours dies, as if by overpopulation.
Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
These rules, which compare the behavior of the automaton to real life, can be condensed into the following:

Any live cell with two or three live neighbours survives.
Any dead cell with three live neighbours becomes a live cell.
All other live cells die in the next generation. Similarly, all other dead cells stay dead.

*/


if(state ==1) //alive
{
	if(sum==2 ||sum==3 )
	{
		//no hay cambio
	}
	else
	{
		state =0;
		image_index = state;
	}
	
}
else{
	if(sum==3 )
	{
		state =1;
		image_index = state;
	}
}