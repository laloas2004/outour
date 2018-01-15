<script>

    $(document).ready(function () {

        $('.moneda-menu').click(function (ele) {

            $('#form-moneda').submit();
//            console.log(ele.target.id);

        });

        function getCart() {
            var data = {};
            $.get("{{url('/cart/get')}}", function (data) {
                var badge_cant = Object.keys(data).length;
                $('#badge_cant').html(badge_cant);
                $('#lista_cart').html('');
                if (badge_cant !== 0) {
                    var total = 0;
                    for (var obj in data) {
                        if (data[obj].options.menor) {
                            $('#lista_cart').append('<li>' + data[obj].qty + ' niños<br><strong>' + data[obj].name + '</strong><br> SubTotal:' + data[obj].subtotalmoneda + '</li>');

                        } else {
                            $('#lista_cart').append('<li>' + data[obj].qty + ' adultos<br><strong>' + data[obj].name + '</strong><br> SubTotal:' + data[obj].subtotalmoneda + '</li>');
                        }

                        total = data[obj].totalmoneda;
                    }
                    $('#lista_cart').append('<li class="total">' +
                            '<span class="pull-right"><strong>Total</strong>:' + total + '</span>' +
                            '<a href="{{url("/checkout")}}" class="btn btn-default btn-cart">Continuar</a>' +
                            '</li>');
//                console.log(total);   
                } else {
                    $('#lista_cart').append('<li>Su Carrito no tiene Tours</li>');
                }
            }, "json");
        }

        getCart();


        $("#search-inp").autocomplete({
            respuesta: {},
            serviceUrl: "{{url('/tourq')}}",
            dataType: 'json',
            onSelect: function (suggestion) {
                $('#search-val').val(suggestion.val);
             var url = "{{url('/tour/')}}"+"/"+suggestion.data; 
             $(location).attr("href", url);
            },
            transformResult: function (response, originalQuery) {
                this.respuesta = response.tours;
                return response;
            },
            appendTo: "#lista-sugerencia",
        });



    });

</script>
