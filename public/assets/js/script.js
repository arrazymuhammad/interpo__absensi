$(function () {
    $('#modalConfirmDelete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var link_override = button.data('linkOverride')
        var data_link = button.data('link')
        var link = `${CURRENT_URL}/${data_link}`
        if (link_override) link = `${base_url}/${link_override}/data)link`
        $('#btn_delete_conf').attr('href', link);
    })
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': `${CSRF_TOKEN}`
        }
    });
})