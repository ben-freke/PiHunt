{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">Add A Clue</h3>
                <p class="text-white">Type the clue below to add it to the Pi.</p>

                <form action="/leaders/add" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" style="width: 100%; background-color: rgba(0,0,0,0); color: white;" id="clue" name="clue" placeholder="Clue">
                    </div>

                    <button type="submit" class="btn btn-outline-light" style="width: 100%;">Add</button>
                </form>
            </div>
            <div class="col">
            </div>
        </div>
    </div>

{% include 'publicFooter.volt' %}