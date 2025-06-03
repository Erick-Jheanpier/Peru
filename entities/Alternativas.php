<?php
class Alternativas{
  private $id_alternativa;
  private $id_pregunta;
  private $texto;
  private $escorrecta;

  public function __GET($atributo){
    return $this->$atributo;
  }

    public function __SET($atributo, $valor){
    $this->$atributo=$valor;
  }

}