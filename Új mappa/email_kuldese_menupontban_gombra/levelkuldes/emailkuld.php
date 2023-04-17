<?php
require 'PHPMailerAutoload.php';

$mail = new PHPMailer();
$mail->IsSMTP();                                          // SMTP-n keresztuli kuldes
$mail->Host     = 'tls://smtp.gmail.com';                     // SMTP szerverek
$mail->SMTPAuth = true;                                   // SMTP

$mail->SMTPSecure = 'tls';
$mail->Port = 587;

$mail->Username = 'a@gmail.com';            // SMTP felhasználo
$mail->Password = 'jelszo';                               // SMTP jelszo

$mail->From     = 'a@gmail.com';            // Felado e-mail cime
$mail->FromName = 'Vezeteknev Keresztnev';                // Felado neve
$mail->AddAddress('a@gmail.com', 'Aniko');         // Cimzett es neve
//$mail->AddAddress('ellen@site.com');                      // Meg egy cimzett
$mail->AddReplyTo('a@gmail.com', 'Information'); // Valaszlevel ide

//$mail->WordWrap = 80;                                     // Sortores allitasa
//$mail->AddAttachment('/var/tmp/file.tar.gz');             // Csatolas
//$mail->AddAttachment('/tmp/image.jpg', 'new.jpg');        // Csatolas mas neven
//$mail->IsHTML(true);                                      // Kuldes HTML-kent

$mail->Subject = 'Here is the subject';                   // A level targya
$mail->Body    = 'This is the <b>HTML body</b>';          // A level tartalma
$mail->AltBody = 'This is the text-only body';            // A level szoveges tartalma

if (!$mail->Send()) {
  echo 'A levél nem került elküldésre';
  echo 'A felmerült hiba: ' . $mail->ErrorInfo;
  exit;
}

echo 'A levelet sikeresen kiküldtük';
?>