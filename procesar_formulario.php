<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Obtener los datos del formulario
  $nombre = $_POST["nombre"];
  $email = $_POST["email"];
  $fechaDesde = $_POST["fecha-desde"];
  $fechaHasta = $_POST["fecha-hasta"];
  $tieneMascota = isset($_POST["tiene-mascota"]) ? "Sí" : "No";
  $cantidadPersonas = $_POST["cantidad-personas"];
  $comentarios = $_POST["comentarios"];

  // Configurar los detalles del correo electrónico
  $to = "matiasaratano@gmail.com";
  $subject = "Nuevo formulario de contacto";
  $message = "Nombre: $nombre\n";
  $message .= "Email: $email\n";
  $message .= "Fecha desde: $fechaDesde\n";
  $message .= "Fecha hasta: $fechaHasta\n";
  $message .= "¿Tiene mascota?: $tieneMascota\n";
  $message .= "Cantidad de personas: $cantidadPersonas\n";
  $message .= "Comentarios: $comentarios\n";
  $headers = "From: $email";

  // Enviar el correo electrónico
  if (mail($to, $subject, $message, $headers)) {
    echo "¡Gracias! Tu formulario ha sido enviado correctamente.";
  } else {
    echo "Error al enviar el formulario. Por favor, intenta nuevamente.";
  }
}
?>
