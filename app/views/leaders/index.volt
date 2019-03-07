{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">Leader Page</h3>
                <p class="text-white">Use the functions below to manage the activity.</p>
                <p class="text-white"><b>Pi Name:</b> {{ name }}</p>
                <p class="text-white"><b>IP Address:</b> {{ ip }}</p>

                <a role="button" class="btn btn-outline-light" href="/leaders/add/" style="width: 100%;">Add New Clue</a>
                <p></p>
                <a role="button" class="btn btn-outline-light" href="/leaders/setlocation/"style="width: 100%;">Add New Location</a>
                <p></p>
                <a role="button" class="btn btn-outline-warning" href="/leaders/reset/clues"style="width: 100%;">Reset Clues</a>
                <p></p>
                <a role="button" class="btn btn-outline-warning" href="/leaders/reset/locations"style="width: 100%;">Reset Locations</a>
                <p></p>
                <a role="button" class="btn btn-outline-danger" href="/leaders/reset/pi"style="width: 100%;">Reset Pi</a>

            </div>
            <div class="col">
            </div>
        </div>
    </div>

{% include 'publicFooter.volt' %}