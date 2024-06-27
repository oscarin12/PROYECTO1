// envia para insertar los datos
document
  .getElementById("miFormulario")
  .addEventListener("submit", function (event) {
    event.preventDefault(); // Evitar el envío del formulario por defecto

    const rut = document.getElementById("rut").value;
    const correo = document.getElementById("email").value;
    const rutValido = validarRut(rut);
    const correoValido = validarCorreo(correo);

    let isChecked = validateCheck();
    // verifica si el rut o correo esta bien
    if (rutValido && correoValido && isChecked) {
      const formData = new FormData(this);

      // Si el RUT y Correo es válido, enviar el formulario a la base de datos
      fetch("app/controllers/insertar.php", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.text())
        .then((data) => {
          document.getElementById("resultado").innerHTML = data;
        })
        .catch((error) => console.error("Error:", error));
    } else if (!rutValido) {
      document.getElementById("resultado").innerHTML = "<h2> rut invalido</h2>";
    } else if (!correoValido) {
      document.getElementById("resultado").innerHTML =
        "<h2> correo invalido</h2>";
    } else if (!isChecked) {
      document.getElementById("resultado").innerHTML =
        "<h2> selecione al menos una opcion de como se entero de  Nosotros </h2>";
    }
    // verificaciones de rut
    function varificarEstructuraRut(rut) {
      const expresionRegular = /^[0-9]{7,8}-[0-9Kk]$/;
      return expresionRegular.test(rut);
    }

    function calcularDigitoVerifiador(rut) {
      let M = 0;
      let S = 1;
      for (; rut; rut = Math.floor(rut / 10))
        S = (S + (rut % 10) * (9 - (M++ % 6))) % 11;
      return S ? S - 1 : "k";
    }

    function validarRut(rutCompleto) {
      if (!varificarEstructuraRut(rutCompleto)) {
        return false;
      }
      const temp = rutCompleto.split("-");
      const rut = temp[0];
      let digitoVerificador = temp[1];

      // pasar el digito a minuscula si es K
      if (digitoVerificador == "K") digitoVerificador = "k";
      return calcularDigitoVerifiador(rut) == digitoVerificador;
    }
    //verificaciones  de correo
    function validarCorreo(correo) {
      const emailRegex =/^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(correo);
    }
    //verificador  si esta selecionado un check
    function validateCheck() {
      let checkboxes = document.querySelectorAll('input[name="tipo[]"]');
      let isChecked = false;

      checkboxes.forEach((checkbox) => {
        if (checkbox.checked) {
          isChecked = true;
        }
      });

      if (!isChecked) {
        // alert("Por favor, selecciona al menos una opción.");
        return false;
      }

      return true;
    }
  });
