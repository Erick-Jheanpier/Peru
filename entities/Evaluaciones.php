<?php
class Evaluaciones{
  private $id_evaluacion;
  private $administrador;
  private $categoria;
  private $titulo;
  private $fecha_creacion;
  private $duracion_minutos;
  private $fecha_inicio;
  private $fecha_fin;

  public function __GET($atributo){
    return $this->$atributo;
  }

    public function __SET($atributo, $valor){
    $this->$atributo=$valor;
  }

}