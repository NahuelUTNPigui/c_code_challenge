fn printing_punteros(mid int,low int,high int){
	println("punteros")
	println("mid: $mid")
	println("low: $low")
	println("high: $high")

}
fn binary_search(lista []int, n int)int{
	i:=-1
	mut low:=0
	mut high:=lista.len
	for low<=high{
		mut mid:=(low+high)/2
		
		if lista[mid]==n{
			return mid
		}
		else if n>lista[mid]{
			low=mid+1
		}
		else{
			high=mid-1
		}
	}
	return i
}
fn merge(mut izq []int,mut der []int)[]int{
	mut lista :=[]int{}
	izq.reverse_in_place()
	der.reverse_in_place()
	for izq.len>0 && der.len >0{
		izq_n:=izq.pop()
		der_n:=der.pop()
		if izq_n<=der_n{
			lista<<izq_n
			der<<der_n
		}
		else{
			lista<<der_n
			izq<<izq_n
		}
	}
	for izq.len>0{
		lista<<izq.pop()
	}
	for der.len>0{
		lista<<der.pop()
	}
	return lista
}
fn mergesort(lista []int)[]int{
	mut izq:=[]int{}
	mut der:=[]int{}
	mut result:=[]int{}
	if lista.len<=1{
		return lista
	}
	medio:= lista.len/2
	
	for i:=0;i<medio;i++{
		izq<<lista[i]
	}
	for i:=medio;i<lista.len;i++{
		der<<lista[i]
	}
	izq=mergesort(izq)
	der=mergesort(der)
	if izq[izq.len-1] <= der[0]{
		
		for n in der{
			izq<<n
		}
		return izq	
	}
	result=merge(mut izq,mut der)
	return result
}
pub fn ordenar(lista []int)[]int{
	return mergesort(lista)
}
pub fn encontrar(lista []int,n int)int{
	return binary_search(lista,n)
}