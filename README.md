# Monarka_app

## Archivo ApiMonarka
Ejecuta "npm i" para instalar todas las dependencias.

[VisualStudio Code](https://code.visualstudio.com/)

[NodeJS](https://nodejs.org/en/)

### Capeta Config
Contiene configuraciones y archivos utilizables para la funcionalidad del Api.

 #### config.js
 - Contiene los parametros para la conexion con la base de datos (MySQL).
 #### keys.js
 - Contiene la clave de cifrado que utilizara el Api para crear un JsonWebToken (JWT).
 #### passport.js
 - Realiza funcion de busqueda de usuarios por ID que cuenten con JWT para su posterior uso en peticiones.

### Carpeta Controllers
Contiene la funcionalidad de las peticiones, recibiendo la informacion obtenida de los modelos y enviando otra informacion procesada a las rutas

 #### categoryControllers.js
 - En este archivo se encuentras las funcionalidades correspondientes al apartado de las categorias de la base de datos.
 #### productsController.js
 - Contienen las funciones que se ocupan de los productos tales como insert, create, etc.
 #### userControllers.js
 - Contienen las funciones que se ocupan de los usuarios tales como insert, create, etc.

### Carpeta db
En esta carpeta se encuentra un archivo .sql en el cual se recomienda agregar todas las consultas y tablas para tener un respaldo en caso de que exista un error con el gestor de base de datos

### Carpeta models
En esta carpeta se encuentran las consultas sql de las diferentes rutas que necesitemos.

  #### category.js
  - Contiene las consultas para la obtencion y creacion de categorias
  #### product.js
  - Contiene las consultas referentes a los productos tales como creacion, actualizacion y filtrado en base a su categoria.
  #### rol.js
  - Contiene las consultas para la cracion del rol del usuario que por defecto a cada usuario nuevo registrado le dara el rol de cliente.
  #### user.js
  - Contiene las consultas para el apartado de usuarios, agregar, actualizar, eliminar, filtrar, etc.

### Carpeta node_modules
Carpeta que te crea node js al crear el proyecto y donde contiene toda la informacion de las dependencias.

### Carpeta Routes
En ella se encunetran las diferentes rutas que utiliza el api para enviar o recibir peticiones del usuario (GET, POST, PUT, DELETE).

### Carpeta Utils
Configuraciones de la base de datos en Firebase para el almacenamiento de imagenes en la nube.

### Archivo package.json
Contiene las dependencias intaladas e informacion del proyecto.

### Archivo server.js
Principal archivo del proyecto, contiene todas las configuraciones para el funcionamiento de todo lo antes mencionado.


## Archivo AplicacionAndroid
Proyecto de Android Studio

[AndroidStudio](https://developer.android.com/studio)

### Carpeta activities
Contiene todos lor archivos de tipo Activity del proyecto para las diferentes vistas de los diferentes roles, ademas de login y registro.

### Carpeta adapters
Los archivos de aqui se usan para los recyclerView para acomodar la informacion recibida en los cardview.

### Conexion con el API

### Carpeta api
#### Archivo RetrofitClient
- Contiene la configuracion de retrofit2.
#### Archivo ApiRoutes
- Contiene la ruta principal del api y las funciones principales de las rutas.

### Carpeta models
En las clases contendidas en esta carpeta se encuentran las declaraciones de los diferentes parametros que enviaremos y recibiremos del api ademas de una funcion
para convertir la informacion a un formato de tipo JSON.

### Carpeta providers
Aqui le enviamos o recibimos la informacion de las rutas, es necesario crear una funcion para cada ruta que se utilice con los parametros que necesita la ruta.

### Carpeta Routes
Aqui usamos interfaces en lugar de clases, aqui vamos a declarar la parte de la ruta a la que se van a dirigir, con cada uno de los parametros que nos pide la ruta,
es necesario una interfaz para cada modelo (para mejor orden).

### Carpeta utils
#### SharedPref
- Este archivo es de mucha importancia pues es el encargado de almacenar la informacion cuando inicias sesion, esto para mentener tu sesion iniciada o almacenar 
informacion sobre tus acciones en la aplicacion.

### CARPETA RES
En esta carpeta encontraras todos recursos de la aplicacion, desde imagenes, colores, layouts, etc.


## Archivo monarkaDB.sql
Contiene el script de la base de datos, con tablas, funciones y algunos datos usados durante el desarrollo de la apliacion.

[MySQL](https://www.mysql.com/)

## Archivos Maquetado_Organized y MonarkaAdmin
Son los maquetados o disenos creados para tomar como base al desarrollar la aplicacion.

[AdobeXD](https://helpx.adobe.com/xd/get-started.html)




