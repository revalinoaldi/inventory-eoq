
<div class="col-lg-12">
    <div class="card m-b-30">
        <div class="card-body">

            <h4 class="mt-0 header-title" id="title"></h4>
            <div class="alert alert-success alert-dismissible fade show mb-0" role="alert" id="alert-simpan-berhasil" style="display:none;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <strong>Berhasil !</strong> Data Berhasil Disimpan
            </div>
            <div class="alert alert-success alert-dismissible fade show mb-0" role="alert" id="alert-update-berhasil" style="display:none;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <strong>Berhasil !</strong> Data Berhasil Dirubah
            </div>
            <div class="alert alert-danger alert-dismissible fade show mb-0" role="alert" id="salah" style="display:none;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <strong>Gagal !</strong> Data Gagal Disimpan
            </div>

            <form class="" action="<?= site_url('lap/eoq/form') ?>" id="frm_data_barang" method="POST">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nama Barang</th>
                            <th>Permintaan Barang (/Thn)</th>
                            <th>Biaya Pesan (Rata Rata)</th>
                            <th>Biaya Simpan</th>
                            <th>Lead Time</th>
                            <th>EOQ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 0; foreach ($barang as $brg): ?>
                            <tr>
                                <td><?= $brg->nama_barang ?>
                                    <input type="hidden" name="item[<?= $i ?>][kd_barang]" value="<?= $brg->kd_barang ?>">
                                </td>
                                <td>
                                    <input type="number" required name="item[<?= $i ?>][demand]" class="form-control" value="<?= @$brg->eoq->jumlah_total_pesanan ? $brg->eoq->jumlah_total_pesanan : (@$brg->total ? $brg->total : 0) ?>">
                                </td>
                                <td>
                                    <input type="number" required name="item[<?= $i ?>][biaya_pesan]" class="form-control" value="<?= @$brg->eoq->biaya_pesan ? $brg->eoq->biaya_pesan : 0 ?>">
                                </td>
                                <td>
                                    <input type="number" required readonly name="item[<?= $i ?>][biaya_simpan]" class="form-control" value="<?= @$brg->eoq->biaya_simpan ? $brg->eoq->biaya_simpan : $brg->biaya_simpan ?>">
                                </td>
                                <td>
                                    <input type="number" required readonly name="item[<?= $i ?>][leadtime]" class="form-control" value="<?= @$brg->eoq->jarak_tiap_pesan ? $brg->eoq->jarak_tiap_pesan : $brg->leadtime ?>">
                                </td>
                                <td>
                                    <input type="number" required disabled class="form-control" value="<?= @$brg->eoq->frequensi_pesan ? $brg->eoq->frequensi_pesan : 0 ?>">
                                </td>
                            </tr>
                        <?php $i++; endforeach ?>
                    </tbody>
                </table>

                <div class="form-group text-right">
                    <div >
                        <button type="submit" class="btn btn-primary waves-effect waves-light" id="btn-simpan">
                            <span id="txt-proses">Tambah</span>
                        </button>
                        <button type="reset" class="btn btn-secondary waves-effect m-l-5" id="btn-reset">
                            Cancel
                        </button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div> <!-- end col -->



