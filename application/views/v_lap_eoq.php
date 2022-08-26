
<div class="col-lg-12">
    <div class="card m-b-30">
        <div class="card-body">
            <div class="col-lg-12 mb-4">
                <div class="row">
                    <div class="col-lg-6">
                        <h4>Economic Order Quantity - Periode : <?= date('Y') ?></h4>
                    </div>
                    <div class="col-lg-6 text-right bg-red">
                        <a href="<?= site_url('lap/eoq/form') ?>" type="submit" class="btn btn-md btn-info"><span class="fas fa-plus"></span> Add EOQ</a> 
                    </div>
                </div>
            </div>
            <table id="datatable" class="table table-bordered " style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Barang</th>
                        <th>Harga Barang</th>
                        <th>Demand (/Thn)</th>
                        <th>Lead Time (Hari)</th>
                        <th>Biaya Pesan</th>
                        <th>Biaya Simpan</th>
                        <th>EOQ</th>
                        <th>ROP</th>
                    </tr>
                </thead>

                <tbody>
                    <?php $i=1; foreach ($barang as $brg): ?>
                        <tr>
                            <td><?= $i++; ?></td>
                            <td><?= $brg->nama_barang; ?></td>
                            <td><?= number_format($brg->harga_barang); ?></td>
                            <td><?= (@$brg->eoq->jumlah_total_pesanan ? $brg->eoq->jumlah_total_pesanan : 0)." ".$brg->satuan; ?></td>
                            <td><?= $brg->leadtime; ?></td>
                            <td><?= @$brg->eoq->biaya_pesan ? number_format($brg->eoq->biaya_pesan) : 0; ?></td>
                            <td><?= @$brg->eoq->biaya_simpan ? number_format($brg->eoq->biaya_simpan) : 0; ?></td>
                            <td><?= @$brg->eoq->frequensi_pesan ? $brg->eoq->frequensi_pesan : 0; ?> <?= $brg->satuan ?></td>
                            <td><?= @$brg->eoq->reorder_poin ? $brg->eoq->reorder_poin : 0; ?> <?= $brg->satuan ?></td>

                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>

                <a href="<?php echo base_url()?>C_laporan/cetak_eoq" target="_blank" class="btn btn-info btn-md"><i class="fa fa-print"></i> Cetak Laporan</a>
                <a href="<?php echo base_url()?>C_laporan/export_excel_eoq" target="_blank" class="btn btn-danger btn-md"><i class="fa fa-clipboard" aria-hidden="true"></i> Export Laporan</a><br>
        </div>
    </div>
</div> <!-- end col -->



