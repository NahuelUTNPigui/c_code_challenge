//Debe poder intersectar y unir
struct Set{

}
struct Node_Deque{
	mut:
		valor int
		anterior Node_Deque
		siguiente Node_Deque
}
pub struct Deque{
	mut:
		primero Node_Deque
		ultimo Node_Deque
		len int
}
pub struct Stack{
	mut: lista []int
}

//Stack function
pub fn (s Stack)len()int{
	return s.lista.len
}
pub fn (mut s Stack)pop()int{
	return s.lista.pop()
}
pub fn (mut s Stack)append(n int){
	s.lista<<n
}
//Deque functions
//Add
pub fn (mut d Deque)add_front(n int){

}
pub fn (mut d Deque)add_last(n int){

}
//Remove
pub fn (mut d Deque)rem_front()int{

}
pub fn (mut d Deque)rem_last()int{

}
//Buscar
pub fn (mut d Deque)search(n int)bool{
	return false

}