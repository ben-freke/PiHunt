{% include 'publicHeader.volt' %}


    <div class="container content-scroll">
        <div class="row">
            <div class="col">
            </div>
            <div class="col-10 content-body">
                <h3 class="text-center text-white">You've almost found me.</h3>
                <p class="text-white">Well done. You need to scan the QR code. To help you out, here's what I see.</p>
                <img src="/assets/img/bars.png" class="img-fluid" alt="Responsive image">
                <h4 class="text-center text-white" style="padding-top: 10px">More Help?</h4>
                <p class="text-white">(If you can't see anything, you might have to use a clue!)</p>
                <p class="text-white">Tap to reveal each clue. We'll know each time you tap one :-)</p>

                {% for clue in clues %}
                    <div class="col-12 clue" id="clue{{ clue.id }}">
                        <div class="clue-overlay" id="clue{{ clue.id }}-overlay">
                            <h5 class="text-white">Clue {{ clue.id }}</h5>
                            <p class="text-white">Tap to reveal</p>
                        </div>
                        <div class="clue-content blur" id="clue{{ clue.id }}-content">
                            <p class="text-white">{{ clue.clue }}</p>
                        </div>
                    </div>
                    <br>
                {% endfor %}

            </div>
            <div class="col">
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){

            {% for clue in clues %}
            $('#clue{{ clue.id }}').on('click', function(e) {
                $('#clue{{ clue.id }}-overlay').hide();
                $("#clue{{ clue.id }}-content").attr("class", "clue-content");
            });
            {% endfor %}
        });
    </script>

{% include 'publicFooter.volt' %}