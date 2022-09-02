<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php
                $grand_total = 0;
                if ($keranjang = $this->cart->contents()) {
                    foreach ($keranjang as $item) {
                        $grand_total = $grand_total + $item['subtotal'];
                    }
                    echo "<h4>Total Belanjan Anda: Rp. " . number_format($grand_total, 0, ',', '.');
                ?>
            </div><br><br>
            <h3> Input Alamat Pengiriman dan Pembayaran</h3>

            <form action="<?php echo base_url() . 'dashboard/proses_pesanan'; ?>" method="post" enctype="multipart/form-data">
                <!-- <form method="post" action="<?php echo base_url() ?> dashboard/proses_pesanan"> -->
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input type="text" name="nama" placeholder="Nama Lengkap Anda" class="form-control">
                </div>

                <div class="form-group">
                    <label>Alamat Lengkap</label>
                    <input type="text" name="alamat" placeholder="Alamat Lengkap Anda" class="form-control">
                </div>

                <div class="form-group">
                    <label>Nomor Telepon</label>
                    <input type="text" name="no_telp" placeholder="Nomor Telepon Anda" class="form-control">
                </div>

                <div class="form-group">
                    <label>Jasa Pengiriman</label>
                    <select class="form-control">
                        <option>GOJEK</option>
                        <option>GRAB</option>
                    </select>

                    <div class="form-group">
                        <label>Pilih Bank</label>
                        <select class="form-control">
                            <option>BCA - xxxxxx</option>
                            <option>BNI - xxxxxx</option>
                            <option>BRI - xxxxxx</option>
                            <option>MANDIRI - xxxxxx</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-sm btn-primary">pesan</button>
                    <!-- <a href ="<?php echo base_url('dashboard/proses_pesanan') ?>">
            <div class="btn btn-sm btn-primary">Pesan</div></a> -->
            </form>
        <?php
                } else {
                    echo "<h4>Keranjang Belanja Anda Masih Kosong";
                }
        ?>
        </div>

        <div class="col-md-2"></div>
    </div>
</div>
</div>