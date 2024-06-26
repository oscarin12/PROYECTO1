// envia para insertar los datos

document
  .getElementById("miFormulario")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    let formData = new FormData(this);

    // Ajusta la ruta al archivo PHP
    fetch("app/controllers/insertar.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((data) => {
        document.getElementById("resultado").innerHTML = data;
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  });
