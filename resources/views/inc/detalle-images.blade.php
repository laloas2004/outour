<div class="images-gallery">
    <ul id="lightgallery" class="list-unstyled">
        <?php
        foreach ($images as $key => $image) {
            if ($key == 0) {
                ?> 
                <li class=" col-md-6" data-src="{{url("/").$image["UrlImg"]}}" data-sub-html="">
                    <a href="">
                        <img class="img-responsive" width="100%" src="{{url("/").$image["UrlImg"]}}">
                    </a>

                </li>
            <?php } else {
                ?>
                <li class="col-xs-6 col-sm-4 col-md-2" data-src="{{url("/").$image["UrlImg"]}}" data-sub-html="">
                    <a href="">
                        <img class="img-responsive" src="{{url("/").$image["thumb"]}}">
                    </a>

                </li>
                <?php
            }

            if ($key >= 4) {
                break;
            }
        }
        ?>
    </ul>
    <div id="descripcion-corta">
        <h3>Resumen</h3>
        {!!str_limit($tour[0]['ResuDescTour'],250)!!}
    </div>
</div>

<script>
    $(document).ready(function () {

        $('#lightgallery').lightGallery();
    });
</script>

<script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
<script src="{{url('/js/image')}}/lightgallery.js"></script>
<script src="{{url('/js/image')}}/lg-fullscreen.js"></script>
<script src="{{url('/js/image')}}/lg-thumbnail.js"></script>
<script src="{{url('/js/image')}}/lg-video.js"></script>
<script src="{{url('/js/image')}}/lg-autoplay.js"></script>
<script src="{{url('/js/image')}}/lg-zoom.js"></script>
<script src="{{url('/js/image')}}/lg-hash.js"></script>
<script src="{{url('/js/image')}}/lg-pager.js"></script>
<script src="{{url('/js')}}/jquery.mousewheel.min.js"></script>
