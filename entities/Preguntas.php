<?php
class Preguntas{
  private $id_pregunta;
  private $id_evaluacion;
  private $pregunta;
  private $puntaje;
  

  public function __GET($atributo){
    return $this->$atributo;
  }

    public function __SET($atributo, $valor){
    $this->$atributo=$valor;
  }

}