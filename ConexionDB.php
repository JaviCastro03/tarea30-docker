<?php
// Modelos/ConexionDB.php o similar

require_once "Config.php"; // Archivo donde se definen las constantes de conexión (SGBD, SERVIDOR, USERDB, PASSWORDDB)

/**
 * @author PABLO RUIZ
 */
// Clase que usa el patrón de diseño Singleton
// Garantiza que solo va a existir una única conexión a la BBDD (base de datos)
class ConexionDB{
    private static $instancia; // Propiedad estática que mantendrá la única instancia de la conexión PDO

    /**
     * Constructor privado.
     * Al ser privado, impide que la clase sea instanciada directamente con 'new ConexionDB()'.
     * Esto es fundamental para el patrón Singleton.
     */
    private function __construct(){

    }

    /**
     * Método mágico __clone() privado.
     * Impide que el objeto se pueda clonar ('clone $objeto').
     */
    private function __clone(){

    }

    /**
     * Método estático principal para obtener la conexión (instancia).
     * Si la conexión no existe, la crea; si ya existe, devuelve la existente.
     * @param string $nombreBD Nombre de la base de datos a la que conectarse.
     * @return PDO|null Retorna el objeto de conexión PDO o null si falla.
     */
    public static function getConexion($nombreBD){
        // 1. Verifica si la instancia estática (la conexión) ya ha sido creada
        if(self::$instancia==null){
            try {
                // 2. Si no existe, se construye la cadena DSN (Data Source Name)
                // Se utilizan las constantes definidas en Config.php
                $option=SGBD.":host=".SERVIDOR.";dbname=".$nombreBD;
                // 3. Se crea la única instancia de PDO y se almacena estáticamente
                self::$instancia = new PDO($option, USERDB, PASSWORDDB);
            }catch(PDOException $e){
                // 4. Si la conexión falla, se asegura de que la instancia sea nula
                self::$instancia=null;
                // Nota: En producción, se recomienda registrar el error ($e->getMessage())
            }
        }
        // 5. Devuelve la instancia de conexión (existente o recién creada)
        return self::$instancia;
    }

    /**
     * Método estático para cerrar explícitamente la conexión.
     * Simplemente establece la instancia estática a null, liberando la conexión.
     */
    public static function cerrarConexion(){
        self::$instancia=null;

    }
}