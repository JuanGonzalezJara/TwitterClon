Desafio Unidad 5 Modulo 5 (Prueba)

# PRUEBA - Introducción a desarrollo de aplicaciones con Ruby on Rails!

Desafio orientado a validar conocimientos de Introducción al Desarrollo de aplicaciones web con Ruby on Rails. 

## Requerimientos

1. Crear la aplicación utilizando como base de datos postgresql.
2. Generar un scaffold para las acciones pertinentes que permitan, Crear, Leer, Actualizar y Eliminar un Tweet.
Para el modelo de Tweet deberán existir los siguientes campos:
i. Description.
ii. UserName
3. Aplicar paginación en la vista index para que se muestren únicamente 10 tweets y exista un botón para ver más.
4. Implementar un buscador de tweets.
5. Utilizar git y github para el versionamiento y progresión de avances en la aplicación, deberán existir al menos 5 commits realizados que describen dichos avances.
6. Subir la aplicación a heroku.

## Subiendo proyecto a Heroku

- Deberas tener primero instalado Heroku en tu instancia de desarrollo, puedes realizarlo siguiendo el proceso desde la web de [heroku](https://id.heroku.com/login).
- Tambien deberas tener tu proyecto con Git inicializado o contar con la carpeta .git en tu proyecto

1: En la terminal, inicia sesión en Heroku:

```bash
heroku login
```

2: Crea una aplicación en Heroku:

```bash
heroku create
```

- Es importante copiar el nombre de la aplicación proporcionado por Heroku

3: Ahora conectaremos el proyecto con nuestra aplicación en Heroku:

```bash
heroku git:remote -a nombre-proyecto-dado_por_heroku
```

4: Realiza un push a Heroku:

```bash
git push heroku main
```

5: Debes ir a la página de tu aplicación en la web de [heroku](https://id.heroku.com/login) y dirigirte a la pestaña de la derecha que dice "More", Una vez que se despliegue el menú, selecciona la opción "Run console".

![Logo!](https://s3.amazonaws.com/heroku-devcenter-files/article-images/1493833851-app-actions-menu.png)


6: Una vez que se despliegue la consola, asegúrate de crear la base de datos si aún no está creada, migrar los cambios y generar los datos mediante el archivo seed.rb:

```bash
rails db:create
rails db:migrate
rails db:seed
```

Siguiendo estos pasos ya podras ver el funcionamiento de la aplicacion con los datos generados por el seed.


![Logo!](https://raw.githubusercontent.com/JuanGonzalezJara/Desafio_RoR_Unidad4_M3_3/main/assets/ROR_Logo.png)
