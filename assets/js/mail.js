(function () {
  document.getElementById("formMail").onsubmit = (e) => {
    e.preventDefault();

    const nombre = document.querySelector("#nombre").value;
    const mail = document.querySelector("#mail").value;
    const asunto = document.querySelector("#asunto").value;
    const mensaje = document.querySelector("#mensaje").value;

    const loadingDiv = document.querySelector(".loading");
    const errorDiv = document.querySelector(".alert-danger");
    const sentDiv = document.querySelector(".alert-success");

    const data = new FormData();
    data.append("nombre", nombre);

    loadingDiv.classList.add("d-block");
    sentDiv.classList.remove("d-block");
    errorDiv.classList.remove("d-block");
    fetch("/contact", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        nombre,
        mail,
        asunto,
        mensaje,
      }),
    })
      .then(function (response) {
        if (!response.ok) {
          throw new Error(response.statusText);
        }
        return response.json();
      })
      .then(function (data) {
        if (!data.ok) {
          throw new Error(data.error);
        }
        console.log(data);
        sentDiv.classList.add("d-block");
      })
      .catch(function (error) {
        console.log(error);
        errorDiv.classList.add("d-block");
      })
      .finally(function () {
        loadingDiv.classList.remove("d-block");
      });
  };
})();
