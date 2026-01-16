SELECT 
    t.id_transaksi,
    t.tanggal_transaksi,
    k.nama_kasir,
    p.nama_pelanggan,
    t.total_bayar
FROM transaksi t
JOIN kasir k ON t.id_kasir = k.id_kasir
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan;
