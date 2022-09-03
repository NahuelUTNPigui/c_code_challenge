fn listas(lista []int){
	println(max_sub_array(lista))
}
fn ordenamiento(lista []int){
	println(ordenar(lista))
}
fn find(lista []int,n int){
	println(encontrar(lista,n))
}
fn pintar_linea(n int){
	for _ in 0..n{
		println("//////////////////////////")
	}
}
fn finding(){
	matriz:=create_matriz()
	pintar_linea(1)
	lista:=ordenar(matriz[0])
	println(lista)
	find(lista,matriz[1][0])

}
fn ordering(){
	matriz:=create_matriz()
	ordenamiento(matriz[0])

}
fn boludear(){
	mut lista:=[]int{}
	for i in 0..10{
		println(i)
		lista<<i
		println(lista)
	}
	for lista.len>0{
		println(lista)
		println(lista.pop())
	}

}
fn jugar_stack(){
	mut s := Stack{}
	s.append(3)
	s.append(2)
	println(s.lista)
	println(s.pop())
	println(s.pop())
}
fn jugar_deque(){
}
fn jugar_ll(){
	mut ll := LL<int>{root :Empty{}}
	ll.root.add_ll(3)
	
}
fn main(){
	println("ll")
	jugar_ll()
}