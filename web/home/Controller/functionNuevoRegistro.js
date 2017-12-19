function compruebaPassword() {
    var Pass = document.getElementById("pass").value;
    var Repass = document.getElementById("rePass").value;
    var btnGuarda = document.getElementById("btnGuarda");

    var tamPass = Pass.length;

    if (Pass == Repass) {
        if (tamPass > 0) {
            btnGuarda.disabled = false;
        }
    } else {
        btnGuarda.disabled = true;
        //document.getElementById("btnGuarda").disabled = true; 
    }
}