
//cargar la lista de candidatos 

document.addEventListener("DOMContentLoaded", function () {
  //guardar variable 
  let datos = null;
  fetch("app/controllers/get_candidatos.php")
    .then((response) => {
      if (!response.ok) {
        throw new Error("La respuesta de la red no fue correcta");
      }
      console.log(response);
      return response.json();
    })
    .then((data) => {
      const candidatoSelect = document.getElementById("candidatoSelect");

      // Limpiar opciones existentes (si las hay)
      candidatoSelect.innerHTML =
        '<option value="">Selecciona una región</option>';
      datos = data;
      // Llenar el combo de regiones
      console.log(data);
      data.candidato.forEach((candidato) => {
        const option = document.createElement("option");
        option.value = candidato.id;
        option.textContent = candidato.nombre;
        candidatoSelect.appendChild(option);
      });
    });
});