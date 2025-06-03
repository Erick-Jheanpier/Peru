<?php
require_once __DIR__ . '/../entities/Evaluaciones.php';
require_once __DIR__ . '/../config/Database.php';

class Evaluacion
{
    private $pdo = null;

    public function __construct()
    {
        $this->pdo = Database::getConexion();
    }

    /**
     * Inserta una nueva evaluación en la tabla 'evaluaciones'
     * y devuelve el id generado.
     *
     * @param Evaluaciones $entidad  (instancia de la entidad Evaluaciones)
     * @return int  (último ID insertado)
     * @throws Exception si falla la inserción
     */
    public function create(Evaluaciones $entidad): int
    {
        $sql = "INSERT INTO evaluaciones (administrador, categoria, titulo, duracion_minutos, fecha_fin)
                VALUES (?, ?, ?, ?, ?)";
        $query = $this->pdo->prepare($sql);
        $query->execute([
            $entidad->__GET('administrador'),
            $entidad->__GET('categoria'),
            $entidad->__GET('titulo'),
            $entidad->__GET('duracion_minutos'),
            $entidad->__GET('fecha_fin'),
        ]);
        return (int) $this->pdo->lastInsertId();
    }

    /**
     * Obtiene todas las evaluaciones de la tabla 'evaluaciones'
     *
     * @return array[]  (arreglo de objetos stdClass con los campos de cada fila)
     */
    public function getAll(): array
    {
        $sql = "SELECT * FROM evaluaciones ORDER BY id_evaluacion";
        $query = $this->pdo->prepare($sql);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}
