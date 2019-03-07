{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">You Found Me!</h3>
                <img src="/assets/img/map.svg" class="img-fluid" alt="Responsive image" style="max-height: 20vh">
                <h4 class="text-center text-white" style="padding-top: 10px">Next Location:</h4>
                <p class="text-white text-center">{{ gridRef }}</p>
            </div>
            <div class="col">
            </div>
        </div>
    </div>

{% include 'publicFooter.volt' %}