resource "null_resource" "myresource" { #creates three null resources
count = "${var.C}"
#for(i=0;i<3;i++){return i}
}

output "myoutput1" {
value = "${var.ENV == "PROD" ? "PRODUCTION" : "NONPRODUCTION"}"
}

output "myoutput2" {
value = "A + B = ${var.A + var.B}\n A - B = ${var.A - var.B}\n A * B = ${var.A * var.B}\n A / B = ${var.A / var.B}\n A % C = ${var.A % var.C}"
}


output "myoutput3" {
value = "${((var.A > var.B && var.A > var.C) ? "A is greatest" : (var.B > var.C ? "B is greatest" : "C is greatest"))}"
#if(A>B && A>C){return A} elseif(B>C){return B} else{return C}
}



output "myoutput4" { 
 value = ["${null_resource.myresource.*.id}"]
}




