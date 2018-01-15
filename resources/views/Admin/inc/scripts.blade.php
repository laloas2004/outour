<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.3.4/js/froala_editor.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/froala_editor.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/align.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/code_view.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/draggable.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/image.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/image_manager.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/link.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/lists.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/table.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/video.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/url.min.js"></script>
<script type="text/javascript" src="{{url('/')}}/js/admin/froala/plugins/entities.min.js"></script>
<script type="text/javascript" src="{{url('/js/admin/froala/languages/es.js')}}"></script>


<script src="{{url('/')}}/js/admin/upload/vendor/jquery.ui.widget.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="{{url('/')}}/js/admin/upload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="{{url('/')}}/js/admin/upload/jquery.fileupload.js"></script>

<script>

$(document).ready(function () {

    $('#lista-tours').DataTable({
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.10.12/i18n/Spanish.json"
            }}
            
        );


});
$('#ResuDescTour').froalaEditor({
    language: 'es'
});


$('#DescripTour').froalaEditor({
    language: 'es'
});


$('#RecomenTour').froalaEditor({
    language: 'es'
});

$('#NoIncluye').froalaEditor({
    language: 'es'
});
$('#Incluye').froalaEditor({
    language: 'es'
});
$('#InfoAdicio').froalaEditor({
    language: 'es'
});

'use strict';
// Change this to the location of your server-side upload handler:
var url = window.location.hostname === 'blueimp.github.io' ?
        '//jquery-file-upload.appspot.com/' : '{{url("/admin/tours/upload")}}';


$('#fileupload').fileupload({
    acceptFileTypes: /(\.|\/)(|jpe?g|png|)$/i,
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    url: url,
    dataType: 'json',
    done: function (e, data) {
        $.each(data.result.files, function (index, file) {
//            $('<p/>').text(file.name).appendTo('#files');
            $('#new-tour-form').append('<input type="hidden" value="' + file.id + '" name="files[]">');

        });
    },
    progressall: function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .progress-bar').css(
                'width',
                progress + '%'
                );
    }
}).prop('disabled', !$.support.fileInput)
        .parent().addClass($.support.fileInput ? undefined : 'disabled');


function eliminar_imagen(id){

    if(confirm("Esta seguro de eliminar esta imagen")){
        var url = "{{url('/admin/tours/image/delete')}}";
        $.ajax({
            method:"POST",
            headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
            url:url,
            dataType:"json",
            data:{id:id}
            
        }).done(function(data){
           
           if(data.deleted){
            location.reload();  
           }else{
               alert('No se pudo eliminar la imagen, intente nuevamente mas tarde');
           }
            
            
        });
        
    };   

     
}

</script>
