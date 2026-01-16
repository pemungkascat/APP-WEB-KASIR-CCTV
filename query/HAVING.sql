SELECT 
    p.nama_pelanggan,
    SUM(t.total_bayar) AS total_belanja
FROM transaksi t
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan
GROUP BY p.nama_pelanggan
HAVING SUM(t.total_bayar) > 1000000;
