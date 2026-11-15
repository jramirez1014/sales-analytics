INSERT INTO customers VALUES
(1, 'Ana', 'Madrid'),
(2, 'Carlos', 'Barcelona'),
(3, 'Laura', 'Valencia'),
(4, 'Pedro', 'Madrid')
ON CONFLICT (customer_id) DO NOTHING;

INSERT INTO products VALUES
(1, 'Laptop', 900),
(2, 'Mouse', 25),
(3, 'Monitor', 200)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO orders VALUES
(101, 1, '2026-11-01'),
(102, 2, '2026-11-02'),
(103, 1, '2026-11-05'),
(104, 4, '2026-11-06')
ON CONFLICT (order_id) DO NOTHING;

INSERT INTO order_items VALUES
(1, 101, 1, 1, 900),
(2, 101, 2, 2, 25),
(3, 102, 3, 1, 200),
(4, 103, 2, 1, 25),
(5, 104, 1, 1, 900)
ON CONFLICT (order_item_id) DO NOTHING;