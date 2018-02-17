# PROYECTO #1 TOPICOS ESPECILES EN TELEMATICA

By: Jhonatan Quiñonez Avil - jquinon1@eafit.edu.co

# Descripción de aplicación

Aplicación web que permite registrar los recorridos realizados por un usuario.

# 1. Análisis

## 1.1 Requisitos funcionales:

1. Crear nuevo viaje.
2. Borrar un recorrido ya terminado.
3. Listar todos los viajes que un usuario ha hecho.

## 1.2 Definición de tecnología de desarrollo y despliegue para la aplicación:

* Lenguaje de Programación: Ruby (2.5.0)
* Framework web backend: Rails (5.1.4)
* Framework web frontend: no se usa - se utilizará Templates HTML para Vista (V)
* Base de datos: Postgresql
* Web App Server: Rails Server
* Web Server: Apache Web Server

# 2. Diseño:

## 2.1 Modelo de datos:

user:

{

  name: String,
  email: String,
  password: Encrypted

}

travels:

{

    title: String,
    created_by: String, -> Reference to UID
    
}

points:

{

  latitude: String,
  longitude: String,
  travel_id: Number
  
}

## 2.2 Servicios Web

/* 
  Servicio Web: Crear un nuevo viaje
  Método: POST
  URI: /users/:user_id/travels/new
*/

/* 
  Servicio Web: Listar todos los viajes realizados por un usuario
  Método: GET
  URI: /users/:user_id/travel
*/

 /* 
  Servicio Web: Borra un Articulo de la Base de datos.
  Método: DELETE
  URI: /users/:user_id/travels/:id
 */

# 3. Despligue en un Servidor Centos 7.x en el DCA

## Install ruby (2.5.0) y rails (5.1.4)
  Para esto se sugiere utilizar un manejador de versiones (RVM)
### Instalar RVM con ruby and rails
*/
  \curl -sSL https://get.rvm.io | bash
 /*
 Ahora ejecutamos los siguientes comandos 
 */
    rvm 2.5.0
    rvm gemset create rails-5.1.4
    rvm gemset use 2.5.0@rails-5.1.4
    gem install rails -v '5.1.4'
  /*
  
### Instalar apache y configurarlo

  */
    yum install httpd
    systemctl enable httpd
    systemctl start httpd
  /*
  
### Configurar firewall

  */
    firewall-cmd --permanent --add-port=80/tcp
    firewall-cmd --reload
  /*

# 4. Despliege en Heroku

1. crear una cuenta en heroku.com

## 4.1 deploy en heroku

  En la configuracion simplemente agregue la direccion del repositorio y este se encargara de hacer el deploy
  * NOTA: Recuerde que debe configurar el archivo config/database.yml e indicar el motor de base de datos que va a utilizar en produccion, en este caso Postgresql
  * Una vez terminado el deploy en la consola de heroku ejeceture el siguiente comando
  /* rake db:migrate */
  Esto se hace porque por alguna extraña razon heroku no se encarga de llenar la base de datos con las tablas requeridas.

Queda en producción en:

            https://find-telematica.herokuapp.com/

/////

@20172            
