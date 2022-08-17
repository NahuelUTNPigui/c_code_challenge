
//digamos
//que el formato es
//2
//1 2 3
//2 3 1
//La primera linea indica cuantas lineas va a haber
//las otras se guardar en un array
import os {input}
fn add_all(ls []int) int {
	mut res:=0
	for n in ls{
		res+=n
	}
	return res

}
fn create_matriz()[][]int{
	linea1 := input("")
	num_lineas:=linea1.int()
	mut matriz:=[][]int{}
	for i := 0; i < num_lineas; i += 1{
		linea:=input("")
		lista:=linea.split(" ")
		mut lista_nums:=[]int{}
		for n in lista{
			lista_nums<< n.int()
		}
		matriz<<lista_nums
	}
	return matriz
}
pub fn test(){

	matriz := create_matriz()
	mut salida:=[]int{}
	for line in matriz{
		salida<<add_all(line)
	}
	for s in salida{
		println(s)
	}
	
}


