
            @include('admin/inc/header')
            
            
            
            <div class="content container-fluid">
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                @include('flash::message')
                @yield('content')
            
            @include('admin/inc/scripts')
            @include('admin/inc/footer')
            </div>