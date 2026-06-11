CREATE TABLE IF NOT EXISTS productos (
    id        SERIAL PRIMARY KEY,
    nombre    VARCHAR(255) NOT NULL,
    url       TEXT NOT NULL,
    tienda    VARCHAR(100) NOT NULL,
    creado_en TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS precios (
    id           SERIAL PRIMARY KEY,
    producto_id  INTEGER REFERENCES productos(id),
    precio       DECIMAL(10,2) NOT NULL,
    moneda       VARCHAR(10) DEFAULT 'USD',
    capturado_en TIMESTAMP DEFAULT NOW()
);

INSERT INTO productos (nombre, url, tienda) VALUES
    ('Monitor LG 27"', 'https://example.com/monitor-lg', 'TiendaEjemplo'),
    ('Teclado Mecanico', 'https://example.com/teclado', 'TiendaEjemplo');