// llenado por regiones y asinado por la comuna

document.addEventListener("DOMContentLoaded", function () {
  //guardar variable
  let datos = null;

  //funcion de regiones
  definitivo();

  // selecion de la region
  let selectR = document.getElementById("regionSelect");

  selectR.addEventListener("change", cargaComunas);

  function cargaComunas() {
    console.log(datos);
    let comunas = datos.comunas.filter(
      (comuna) => comuna.region_id == selectR.value
    );
    const comunaSelect = document.getElementById("comunaSelect");
    // Limpiar opciones existentes (si las hay)
    comunaSelect.innerHTML = '<option value="">Selecciona una comuna</option>';
    // Llenar el combo de comuna
    comunas.forEach((comuna) => {
      const option = document.createElement("option");
      option.value = comuna.id;
      option.textContent = comuna.nombre;
      comunaSelect.appendChild(option);
    });
  }
// funcion de regiones  
  async function definitivo() {
    await fetch("app/controllers/get_regiones.php")
      .then((response) => {
        if (!response.ok) {
          throw new Error("La respuesta de la red no fue correcta");
        }
        return response.json();
      })
      .then((data) => {
        const regionSelect = document.getElementById("regionSelect");

        // Limpiar opciones existentes (si las hay)
        regionSelect.innerHTML =
          '<option value="">Selecciona una región</option>';
        datos = data;
        // Llenar el combo de regiones
        data.regiones.forEach((region) => {
          const option = document.createElement("option");
          option.value = region.id;
          option.textContent = region.nombre;
          regionSelect.appendChild(option);
        });
      });
  }
});
