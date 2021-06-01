<div class="modal fade slide-right" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content-wrapper">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i
                        class="pg-close fs-14"></i>
                </button>
                <div class="container-xs-height full-height">
                    <div class="row-xs-height">
                        <div class="modal-body col-xs-height col-middle text-center   ">
                            <h5 class="text-danger">Yakin menghapus data ini?</h5>
                            <br>
                            <small class="text-default">Data yang telah dihapus tidak akan dapat dikembalikan</small>
                            <br><br>
                            <a href="#" id="btn_delete_conf" data-method="delete" data-token="{{ csrf_token() }}"
                                class="btn btn-danger btn-block">Continue</a>
                            <button type="button" class="btn btn-default btn-block" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
