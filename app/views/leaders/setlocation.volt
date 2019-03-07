{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">Set Next Location</h3>
                <p class="text-white">Set the location of the next Pi.</p>

                <form action="/leaders/setlocation" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" style="width: 100%; background-color: rgba(0,0,0,0); color: white;" id="code" name="code" placeholder="Code">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" style="width: 100%; background-color: rgba(0,0,0,0); color: white;" id="gridref" name="gridref" placeholder="OS Grid Reference">
                    </div>
                    <button type="submit" class="btn btn-outline-light" style="width: 100%;">Save</button>
                </form>
            </div>
            <div class="col">
            </div>
        </div>
    </div>

{% include 'publicFooter.volt' %}