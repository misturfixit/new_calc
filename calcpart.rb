#msg = "can't div by 0"

def calcy(func,n1,n2)
	p "#{n2} num herree"
	p "#{func} funnnc" 
	if func == "add"
		n1 + n2
	elsif func == "sub"
		n1 - n2
	elsif func == "div"
		if n2 == 0
		redirect '/thework?msg= "cannot divide by 0"'	
		else 
		n1 / n2
		end
	else 
			n1 * n2
	end


end		
				
										

