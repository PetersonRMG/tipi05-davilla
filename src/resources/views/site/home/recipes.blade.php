    <!-- Recipes Section  -->
         @php
        $recipes = asset('davilla/images/backgrounds/visually-appealing-interior-modern-bakery-showcasing-variety.webp')
        @endphp
         <!-- style="background-image: url('{{$recipes}}'); -->
    <section class="recipes-section">
        <div class="auto-container">
            <div class="sec-title text-center">
                <div class="divider"><img src="{{asset('davilla/images/icons/divider_1.png')}}" alt=""></div>
                <h2>Recipes For You</h2>
            </div>

            <!-- Recipes Carousel -->
            <div class="recipes-carousel owl-carousel owl-theme">
                <!-- Recipe Block -->
                <div class="recipe-block">
                     <figure class="recipe-image"><img src="{{asset('davilla/images/backgrounds/pink-donuts-hearts-pink-background.webp')}}" alt=""></figure> 
                </div>

                <!-- Recipe Block -->
                <div class="recipe-block">
                     <figure class="recipe-image"><img src="{{asset('davilla/images/backgrounds/pink-donuts-hearts-pink-background.webp')}}" alt=""></figure>
                </div>

                <!-- Recipe Block -->
                <div class="recipe-block">
                     <figure class="recipe-image"><img src="{{asset('davilla/images/backgrounds/pink-donuts-hearts-pink-background.webp')}}" alt=""></figure>
                </div>
            </div>
        </div>
    </section>
    <!-- End Recipes Section  -->