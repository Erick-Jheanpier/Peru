<?php
require_once __DIR__ . '/../entities/Preguntas.php';
require_once __DIR__ . '/../config/Database.php';

class Pregunta
{
    private $pdo = null;

    public function __construct()
    {
        $this->pdo = Database::getConexion();
    }

    /**
     * Inserta una nueva pregunta en la tabla 'preguntas'
     * y devuelve el id generado.
     *
     * @param Preguntas $entidad  (instancia de la entidad Preguntas)
     * @return int  (último ID insertado)
     * @throws Exception si falla la inserción
     */
    public function create(Preguntas $entidad): int
    {
        $sql = "INSERT INTO preguntas (id_evaluacion, pregunta, puntaje)
                VALUES (?, ?, ?)";
        $query = $this->pdo->prepare($sql);
        $query->execute([
            $entidad->__GET('id_evaluacion'),
            $entidad->__GET('pregunta'),
            $entidad->__GET('puntaje'),
        ]);
        return (int) $this->pdo->lastInsertId();
    }

    /**
     * Obtiene todas las preguntas de la tabla 'preguntas'
     *
     * @return array[]  (arreglo de objetos stdClass con los campos de cada fila)
     */
    public function getAll(): array
    {
        $sql = "SELECT * FROM preguntas ORDER BY id_pregunta";
        $query = $this->pdo->prepare($sql);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}
