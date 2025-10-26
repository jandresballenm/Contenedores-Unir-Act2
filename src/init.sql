-- Crear tabla posts
CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    excerpt VARCHAR(500),
    author VARCHAR(100) DEFAULT 'Admin',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar primer blog (formato corregido)
INSERT INTO posts (title, content, excerpt, author) VALUES (
    'Activividad 2 de Contenedores del Master DevOps de UNIR', 
    'Este es mi primer blog desarrollado con Go y desplegado usando Docker Compose.

## Tecnologías Utilizadas:

- **Backend**: Go 1.23
- **Base de datos**: PostgreSQL 16
- **Proxy reverso**: Caddy
- **Contenedores**: Docker

### Características del Proyecto:

- Arquitectura de microservicios
- Comunicación entre contenedores
- Base de datos persistente
- Servidor web moderno',
    'Primer post del blog desarrollado con Go, PostgreSQL y Docker Compose.',
    'Jaime Andres Ballen Manrique'
);
