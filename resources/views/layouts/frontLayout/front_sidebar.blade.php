


<form action="#" method="post">{{ csrf_field() }}

        <input name="url"  type="hidden">



    <div class="left-sidebar">
        <h2>Category</h2>
        <div class="panel-group category-products" id="accordian">


            {{--     Display Categories and Sub-Categories at Left Sidebar Dynamically   --}}


            <div class="panel panel-default">


                <?php // echo $categories_menu; ?>


                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordian" href="#">
                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>

                            </a>
                        </h4>
                    </div>

                    <div  class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul>

                                        <li><a href="#"> </a> category count</li>


                            </ul>
                        </div>
                    </div>




            </div>



            {{--   Display Categories and Sub-Categories at Left Sidebar Dynamically End   --}}




        </div>











            <h2>Colors</h2>
            <div class="panel-group">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <input  type="checkbox" >&nbsp;&nbsp;<span class="products-colors">color</span>
                            </h4>
                        </div>
                    </div>

            </div>




            <div>&nbsp;</div>

            <h2>Sleeve</h2>
            <div class="panel-group">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <input  type="checkbox" >&nbsp;&nbsp;<span class="products-sleeves">sleeve </span>
                            </h4>
                        </div>
                    </div>

            </div>



            <div>&nbsp;</div>

            <h2>Pattern</h2>
            <div class="panel-group">


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <input  type="checkbox">&nbsp;&nbsp;<span class="products-patterns">pattern</span>
                            </h4>
                        </div>
                    </div>

            </div>


            <div>&nbsp;</div>

            <h2>Size</h2>
            <div class="panel-group">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <input  type="checkbox" >&nbsp;&nbsp;<span class="products-sizes">size</span>
                            </h4>
                        </div>
                    </div>

            </div>

            <div>&nbsp;</div>



    </div>
</form>
