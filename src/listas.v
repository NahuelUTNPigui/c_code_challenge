//La idea es tomar la maxima suma de elementos contiguos en esta lista
fn max(a int, b int) int{
	if a>b{
		return a
	}
	return b
}
fn brute_force(lista []int)int{
	size:=lista.len
	mut best:=0
	for i:=0;i<size;i+=1{
		for j:=i;j<size;j+=1{
			mut suma:=0
			for k:=i;k<j;k+=1{
				suma+=lista[k]
			}
			if suma>best{
				best=suma
			}
		}
	}
	return best
}
fn kadane(lista []int)int{
	
	mut best:=0
	mut suma:=0
	for n in lista{
		//la idea es que si un elemento pertenece al
		//mejor sub array entonces el anterior tambien
		suma=max(n,n+suma)
		best=max(best,suma)
	}
	//Here come the magic
	return best
}
fn max_sub_array(lista []int)int{
	return kadane(lista)
}