<?php
require_once __DIR__ . '/../entities/Alternativas.php';
require_once __DIR__ . '/../config/Database.php';

class Alternativa
{
    private $pdo = null;

    public function __construct()
    {
        $this->pdo = Database::getConexion();
    }

    /**
     * Inserta una nueva alternativa en la tabla 'alternativas'
     * y devuelve el id generado.
     *
     * @param Alternativas $entidad  (instancia de la entidad Alternativas)
     * @return int  (último ID insertado)
     * @throws Exception si falla la inserción
     */
    public function create(Alternativas $entidad): int
    {
        $sql = "INSERT INTO alternativas (id_pregunta, texto, escorrecta)
                VALUES (?, ?, ?)";
        $query = $this->pdo->prepare($sql);
        $query->execute([
            $entidad->__GET('id_pregunta'),
            $entidad->__GET('texto'),
            $entidad->__GET('escorrecta'),
        ]);
        return (int) $this->pdo->lastInsertId();
    }

    /**
     * Obtiene todas las alternativas de la tabla 'alternativas'
     *
     * @return array[]  (arreglo de objetos stdClass con los campos de cada fila)
     */
    public function getAll(): array
    {
        $sql = "SELECT * FROM alternativas ORDER BY id_alternativa";
        $query = $this->pdo->prepare($sql);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}
