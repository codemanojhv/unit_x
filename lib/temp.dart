import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HOME extends StatelessWidget {
     HOME({super.key});
  //String name = "hello";
final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {

    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin:const  EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: SizedBox(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: const TextStyle(color: Colors.indigo),
                )),
              ),
            ));


    return  Scaffold( 
      backgroundColor:  Colors.deepPurple[100],

         
        body:  CustomScrollView(

          slivers: [
            SliverAppBar(
              elevation: 0,
            
            backgroundColor: Colors.deepPurple[200  ],
              pinned: true, // it pins the app bar after srolling
              floating:true,  // this makes the sliver app bar come downwards even if you scroll a bit you dont have to come all way down
              expandedHeight: 150 ,
              collapsedHeight: 64,
           
              flexibleSpace:  FlexibleSpaceBar(
              title: const Text(" TRACK MY WORK ",
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black),
              textAlign: TextAlign.center,
              ), 
              background: Container(
                color: Colors.deepPurple[100],
              ),
              collapseMode: CollapseMode.parallax ,
              ),
            ), 
            
            
           
            SliverToBoxAdapter(
             child: Padding(padding: const EdgeInsets.all(15.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 20,
                
                color: Colors.deepPurple[100], 
              ),
             ),
             ),
    
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                 // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
             const  Padding(
                padding:EdgeInsets.only(top: 24, bottom: 12),
                child: Text(
                  'Worm',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),

              //
               const Padding(
                 padding:  EdgeInsets.only(top: 16, bottom: 8),
                 child: Text(
                   'Jumping Dot',
                   style: TextStyle(color: Colors.black54),
                 ),
               ),
               SmoothPageIndicator(
                 controller: controller,
                 count: pages.length,
                 effect: const  JumpingDotEffect(
                   dotHeight: 16,
                   dotWidth: 16,
                   jumpScale: .7,
                   verticalOffset: 15,
                 ),
               ),
              const  Padding(
                 padding:  EdgeInsets.only(top: 16, bottom: 12),
                 child: Text(
                   'Scrolling Dots',
                   style: TextStyle(color: Colors.black54),
                 ),
               ),
               SmoothPageIndicator(
                   controller: controller,
                   count: pages.length,
                   effect: const ScrollingDotsEffect(
                     activeStrokeWidth: 2.6,
                     activeDotScale: 1.3,
                     maxVisibleDots: 5,
                     radius: 8,
                     spacing: 10,
                     dotHeight: 12,
                     dotWidth: 12,
                   )),
                const Padding(
                  padding:  EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Customizable Effect',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),

           
               SmoothPageIndicator(
               
                 controller: controller,
                 count: pages.length,
                 effect: CustomizableEffect(
                   activeDotDecoration: DotDecoration(
                     width: 32,
                     height: 12,
                     color: Colors.indigo,
                     rotationAngle:  180,
                     verticalOffset: -30,
                     borderRadius: BorderRadius.circular(24),
                      dotBorder: const DotBorder(
                        padding: 2,
                        width: 2,
                        color: Colors.black,
                      ),
                   ),
                   dotDecoration: DotDecoration(
                     width: 14,
                     height: 12,
                     color: Colors.grey,
                     dotBorder: const DotBorder(
                       padding: 1,
                       width: 1,
                       color: Colors.black,
                     ),
                    // borderRadius: const BorderRadius.only(
                    //     topLeft: Radius.circular(2),
                    //     topRight: Radius.circular(16),
                    //     bottomLeft: Radius.circular(16),
                    //     bottomRight: Radius.circular(2)
                    //     ),
                     borderRadius: BorderRadius.circular(16),
                     verticalOffset: 0,
                   ),
                   spacing: 6.0,
                   activeColorOverride: (i) => colors[i],
                   inActiveColorOverride: (i) => colors[i],
                 ),
               ),
               const SizedBox(height: 32.0),
            ],
          ),
              ),
            ),
         
         
            SliverToBoxAdapter(
             child: Padding(padding: const EdgeInsets.all(15.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 500,
                
                color: Colors.deepPurple,
              ),
             ),
             ),
             
            ),
            SliverToBoxAdapter(
             child: Padding(padding: const EdgeInsets.all(15.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
             ),
             ),
    
            )
          ],
        
      ),
    );
  }
}

            
const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];

