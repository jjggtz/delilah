# Delilah App
---

## Proyecto N°3 "Delilah Restó" 
-----
Autor: Juan José Gutiérrez
## Lista de archivos
-----
```
.:
README.md
./src
package.json
package-lock.json
delilah.sql
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
handlebars.js
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

## Instrucciones para inciar el servidor
-----
1. Ejecutar XAMPP o cualquier otro software de gestion de MySQL y Apache
2. Importar la base de datos "delilah.sql" que se encuentra dentro de la carpeta del proyecto, a phpmyadmin
3. Abrir consola DOS (cmd) de Windows
4. Ingresar a la carpeta del proyecto: delilahtp
5. Iniciar el proyecto con el comando `npm run dev`
6. Si el servidor se inicia correctamente debería decir 
```
[nodemon] 2.0.3
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `node src/`
{ host: 'localhost', port: '3306', user: 'root', database: 'delilah' }
Server on port 4000
Conectado a la base de datos
```
En caso que no se conecte a la base de datos dirá "La conexión a la base de datos fue rechazada"
7. Iniciar la aplicación desde la URL **http://localhost:4000/**

Indicaciones generales sobre la aplicación
-----
Paths:
```
acceso para usuario:
/  homepage
/signup  registro de usuario
/signin  inicio de sesión
/profile  perfil de usuario
/links/platos  listado de platos para elegir
/links/confirmar  carrito de compras
/links/recibido  confirmación de compra
/links/seguimiento  seguimiento de compra

acceso para admin:
/links/admin  pedidos en curso
/links/historial  historial de pedidos
/links/usuarios  lista de usuarios
/links/menu  lista de platos
/links/add  agregar un plato
/links/modificar  modificar un plato
```

* Si un usuario tiene un pedido en curso, no puede crear otro hasta que el admin archive el pedido en curso.
* Si un usuario cancela un pedido confirmado, no puede crear otro hasta que el admin archive el pedido cancelado.
* Los usuarios pueden cargar productos en el carrito, desloguear y al volver seguirán estando en su carrito.

