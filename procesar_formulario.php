<?php
mb_internal_encoding("UTF-8");
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

$mail = new PHPMailer(true);

try {
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'casinuevo.vg@gmail.com';
    $mail->Password = 'avmrzdcrwvnjozfo';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    $mail->setFrom('casinuevo.vg@gmail.com', 'Laberinto Gesell Web');
    $mail->addAddress('matiasaratano@gmail.com', 'Receptor');
    //$mail->addCC('concopia@gmail.com');

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Obtener los datos del formulario
        $nombre = $_POST["nombre"];
        $email = $_POST["email"];
        $fechaDesde = $_POST["fecha-desde"];
        $fechaHasta = $_POST["fecha-hasta"];
        $tieneMascota = isset($_POST["tiene-mascota"]) ? "Si" : "No";
        $cantidadPersonas = $_POST["cantidad-personas"];
        $comentarios = $_POST["comentarios"];

        // Configurar los detalles del correo electrónico
         $subject = "Nueva consulta";
        // $message = "Nombre: $nombre\n";
        // $message .= "Email: $email\n";
        // $message .= "Fecha desde: $fechaDesde\n";
        // $message .= "Fecha hasta: $fechaHasta\n";
        // $message .= "Tiene mascota?: $tieneMascota\n";
        // $message .= "Cantidad de personas: $cantidadPersonas\n";
        // $message .= "Comentarios: $comentarios\n";
      

        // Construir el mensaje HTML
        $message = '<html>';
        $message .= '<head><style>';
        $message .= 'body { font-family: Arial, sans-serif; background-color: #f6f6f6; }';
        $message .= '.container { max-width: 600px; margin: 0 auto; padding: 20px; background-color: #ffffff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); border-radius: 5px; }';
        $message .= 'h1 { color: #333333; }';
        $message .= 'p { color: #777777; }';
        $message .= 'ul { list-style: none; padding: 0; }';
        $message .= 'li { margin-bottom: 10px; }';
        $message .= '</style></head>';
        $message .= '<body>';
        $message .= '<div class="container">';
        $message .= '<h1>Nueva consulta</h1>';
    
        $message .= '<ul>';
        $message .= '<li><strong>Nombre:</strong> ' . $nombre . '</li>';
        $message .= '<li><strong>Email:</strong> ' . $email . '</li>';
        $message .= '<li><strong>Fecha desde:</strong> ' . $fechaDesde . '</li>';
        $message .= '<li><strong>Fecha hasta:</strong> ' . $fechaHasta . '</li>';
        $message .= '<li><strong>Tiene mascota:</strong> ' . $tieneMascota . '</li>';
        $message .= '<li><strong>Cantidad de personas:</strong> ' . $cantidadPersonas . '</li>';
        $message .= '<li><strong>Comentarios:</strong> ' . $comentarios . '</li>';
        $message .= '</ul>';
        $message .= '</div>';
        $message .= '</body>';
        $message .= '</html>';

        // Establecer el contenido del correo electrónico
        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body = $message;

        // Enviar el correo electrónico
        $mail->send();
        header("Location: gracias.html");
        exit();
    }
} catch (Exception $e) {
  header("Location: error.html");
  exit();
}

?>
