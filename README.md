# Delilah App
---

## Proyecto N°3 "Delilah Restó" 

Autor: Juan José Gutiérrez

Lista de archivos
-----
```
.:
README.md
./Base de datos
./src
package.json

```
```
/Base de datos
delilah.sql
carrito.sql
historial.sql
menu.sql
pedidos.sql
usuarios.sql
```
```
/src
./lib
./public
./routes
./views
database.js
index.js
keys.js
```
```
/src/lib
adminauth.js
auth.js
helpers.js
passport.js
```
```
/src/public
./assets
./CSS
```
```
/src/public/assets
back2.png
efectivo.png
fondo.jpg
gluten.png
nofoto.png
recibido.png
refresh.png
remove.png
tarjeta.png
track1.jpg
track2.jpg
track3.jpg
track4.jpg
trash.png
user.png
```
```
/src/public/CSS
style.css
```
```
/src/public/CSS
style.css
```
```
/src/routes
authentication.js
index.js
links.js
```
```
/src/views
./auth
./layouts
./links
profile.hbs
```
```
/src/views/auth
signin.hbs
signup.hbs
```
```
/src/views/layouts
main.hbs
```
```
/src/views/links
add.hbs
confirmar.hbs
editar.hbs
historial.hbs
index.hbs
menu.hbs
menuadmin.hbs
modificar.hbs
platos.hbs
recibido.hbs
seguimiento.hbs
usuarios.hbs
```
```
/src/views/layouts
main.hbs
```

Instrucciones para inciar el servidor
-----
1. Clonar el proyecto de Git a la pc.
2. Ejecutar XAMPP o cualquier otro software de gestion de MySQL y Apache
3. Importar la base de datos "delilah.sql" que se encuentra dentro de la carpeta "Base de datos" del proyecto, a phpmyadmin.
   En la misma carpeta además están las tablas de la db, las cuales se pueden importar por separado
4. Abrir consola DOS (cmd) de Windows
5. Ingresar a la carpeta del proyecto: delilahtp
6. Iniciar el proyecto con el comando `nodemon src/index.js`
7. Si el servidor se inicia correctamente debería decir 
```
[nodemon] 2.0.3
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `node src/index.js`
{ host: 'localhost', port: '3306', user: 'root', database: 'delilah' }
Server on port 4000
Conectado a la base de datos
```
En caso que no se conecte a la base de datos dirá "La conexión a la base de datos fue rechazada" (Revisar punto 2 y 3)

8. Iniciar la aplicación desde la URL **http://localhost:4000/**

Indicaciones generales sobre la aplicación
-----
Paths:
```
acceso para usuario y admin:
/  homepage
/signup  registro de usuario
/signin  inicio de sesión
/profile  perfil de usuario
/links/platos  listado de platos para elegir
/links/confirmar  carrito de compras
/links/recibido  confirmación de compra
/links/seguimiento  seguimiento de compra

acceso único para admin:
/links/admin  pedidos en curso
/links/historial  historial de pedidos
/links/usuarios  lista de usuarios
/links/menu  lista de platos
/links/add  agregar un plato
/links/modificar  modificar un plato
```

```
CUENTA DE ADMIN
usuario: admin
password: admin123
```
```
BASE DE DATOS
host: 'localhost'
port: 3306
user: root
database: delilah
```


* Si un usuario tiene un pedido en curso, no puede crear otro hasta que el admin archive el pedido en curso.
* Si un usuario cancela un pedido confirmado, no puede crear otro hasta que el admin archive el pedido cancelado.
* Los usuarios pueden cargar productos en el carrito, desloguear y al volver seguirán estando en su carrito.
* El acceso a la consola de admin solo es a través del path `/links/admin`.
* El privilegio de admin solo se puede dar a un usuario editando la base de datos > tabla usuarios > campo Rol.
* El admin puede:
```
- Cambiar estado de un pedido
- Archivar un pedido
- Ver lista de productos
- Crear, editar y borrar un producto
- Ver listado de usuarios
- Borrar un usuario
```
* El usuario puede:
```
- Ver lista de productos
- Crear un pedido
- Cancelar un pedido
- Cambiar el estado de un pedido a "ENTREGADO"
```
