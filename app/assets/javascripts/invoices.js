

function capturedata(){
	var total = parseInt(document.getElementById("totalamount").innerHTML);
	var balance = parseInt(document.getElementById("balancedue").innerHTML);
    var amountpaid = parseInt(document.getElementById("amountpaid").innerHTML);
    var patientname = document.getElementById("patientname").innerHTML;
    var doctorname= document.getElementById("doctorname").innerHTML;
    var invoiceno= document.getElementById("invoiceno").innerHTML;
    var notes= document.getElementById("notes").innerText;
	console.log(total);
	console.log(balance);
	console.log(amountpaid);
	console.log(patientname);
	console.log(doctorname);
	console.log(notes);
	console.log(invoiceno);
	document.getElementById("invoice_user").value = patientname;
	document.getElementById("invoice_doctor").value = doctorname;
	document.getElementById("invoice_invoice_number").value = invoiceno;
	document.getElementById("invoice_notes").value = notes;
	document.getElementById("invoice_amount").value = total;
}
$(document).ready(function(){
	capturedata();

});
 
 function printDiv() {
   document.body.style.zoom = 0.95;
    window.print();
    
}