![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)


# Proyecto 1 | Bases de Datos Distribuidas 
## Modernizando la Gestión de Datos para una Biblioteca Pequeña

### Introducción

Este proyecto explora las diferencias entre bases de datos relacionales y NoSQL en el contexto de una biblioteca pequeña. Se implementan características de MongoDB, una base de datos NoSQL, para desarrollar una arquitectura orientada a documentos que complementa la estructura relacional básica.

### MongoDB

MongoDB es nuestra base de datos NoSQL elegida para manejar datos desestructurados y flexibles dentro de la aplicación de biblioteca. A través de MongoDB Atlas, realizamos una gestión en la nube eficiente.

#### Características de MongoDB

- **Esquema flexible**: Los documentos pueden tener estructuras variadas en una colección.
- **JSON (BSON)**: Almacenamiento de datos en formatos anidados y fáciles de manipular.
- **Escalado horizontal**: Se logra mediante técnicas de particionado de datos, conocidas como "sharding".

### Objetivo del Proyecto

El objetivo es diseñar la arquitectura de datos para un sistema de biblioteca que gestiona libros físicos sin incluir préstamos interbibliotecas.

<img width="2728" height="1796" alt="biblioteca_arquitectura" src="https://github.com/user-attachments/assets/1ad28345-12e6-44b2-ab6d-ff9ef63af4f5" />

1. **Presentación del Negocio**:
   - La biblioteca proporciona préstamos de libros físicos, administrados a través de una página web.

2. **Identificación de Entidades y Variables**:
   - **Entidades**: Libros, Autores, Usuarios, Préstamos, Ejemplares, Movimientos de libros.
   - **Atributos relevantes**: Título del libro, nombre del autor, fecha de publicación, usuario, fecha de préstamo, estado del libro.

3. **Propuesta de Modelo Relacional**:
   - Tablas principales: Autor, Libro, Usuario, Préstamo, Libro_detalle, y Autor_has_Libro.
   - Diagrama ERD para ilustrar las relaciones utilizando claves primarias y foráneas.

<img width="898" height="908" alt="biblioteca_ERD" src="https://github.com/user-attachments/assets/22d2552c-7453-48ed-ada5-c69959cc8025" />


4. **Bases de Datos Propuestas**:
   - Uso de bases de datos relacionales para la mayoría de datos transaccionales.
   - Implementación de MongoDB para almacenar catálogos dinámicos y registros de actividades como reseñas y los movimientos de inventarios.
   
5. **Justificación Final**:
   - La combinación de bases de datos relacionales y MongoDB permite gestionar eficientemente tanto datos estructurados como no estructurados, maximizando la flexibilidad y escalabilidad.
  
<img width="500" height="212" alt="biblioteca_API" src="https://github.com/user-attachments/assets/1d613f96-cb07-49f6-8519-b1a89bc5bedb" />


