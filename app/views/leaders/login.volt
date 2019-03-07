{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">Login</h3>
                <p class="text-white">To proceed, you must enter the leader password.</p>

                <form action="/leaders/login" method="post">
                    <div class="form-group">
                        <input type="password" class="form-control" style="width: 100%; background-color: rgba(0,0,0,0); color: white;" id="password" name="password" placeholder="Password">
                    </div>

                    <button type="submit" class="btn btn-outline-light" style="width: 100%;">Login</button>
                </form>
            </div>
            <div class="col">
            </div>
        </div>
    </div>

{% include 'publicFooter.volt' %}