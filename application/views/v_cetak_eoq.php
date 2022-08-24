<style>
    #customers {
      font-family: Verdana, Geneva, sans-serif;
      border-collapse: collapse;
      width: 100%;
  }

  #customers td, #customers th {
      border: 1px solid #ddd;
      padding: 8px;
      font-size:10px;
  }

  #customers tr:nth-child(even){background-color: #f2f2f2;}

  #customers tr:hover {background-color: #ddd;}

  #customers th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: #4bbbce;
      color: white;
  }
</style>

<div class="col-lg-12">
    <div class="card m-b-30">
        <div class="card-body">
            <p>KAWA COFFEE<br>Cetak pada Tgl : <?php echo date('Y-m-d')?></p>
            <table id="customers" class="table table-bordered " style="border-collapse: collapse; border-spacing: 0; width: 100%;font-size:12px;">
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
                        <th>Reorder Poin</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i=1; foreach ($barang as $brg): ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <td><?= $brg->nama_barang; ?></td>
                        <td><?= number_format($brg->harga_barang); ?></td>
                        <td><?= $brg->eoq->jumlah_total_pesanan." ".$brg->satuan; ?></td>
                        <td><?= $brg->leadtime; ?></td>
                        <td><?= number_format($brg->eoq->biaya_pesan); ?></td>
                        <td><?= number_format($brg->eoq->biaya_simpan); ?></td>
                        <td><?= $brg->eoq->frequensi_pesan; ?></td>
                        <td><?= $brg->eoq->reorder_poin; ?></td>

                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>

    </div>
</div>
</div> <!-- end col -->
