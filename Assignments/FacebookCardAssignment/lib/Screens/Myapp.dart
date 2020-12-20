import 'package:FacebookCardAssignment/Models/facebookcardmodel.dart';
import 'package:flutter/material.dart';

class MyFacebookApp extends StatefulWidget {
  @override
  _MyFacebookAppState createState() => _MyFacebookAppState();
}

class _MyFacebookAppState extends State<MyFacebookApp> {
  double height,width;
  int count=0,countcomment=0,countshares=0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(

      appBar: _appBar(),

      body: _myList(),

      backgroundColor: Colors.white70,
      
    );
  }

  Widget _appBar(){

    return AppBar(

      title: Text('facebook',style: TextStyle(color: Colors.blue),),
      backgroundColor: Colors.white,

      actions: [

         Icon(
          Icons.search,
          color: Colors.black,size: 30,
        
          ),
        

        SizedBox(

          width: 30,
          
        ),

       

          CircleAvatar(
      
          backgroundColor: Colors.white60,
      
          child: Container(
            height: 28,
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.iconscout.com/icon/free/png-512/facebook-messenger-2-569346.png"),
               radius: 15,
               
               backgroundColor: Colors.white,

            ),
          )

        ),
        SizedBox(
          width: 20,
        )
      ],

    );

  }

  Widget _myList(){

       FacebookCardModel model1 = FacebookCardModel(
         fbname: 'Facebook App',
         postdetails: "Pamper your pooch. The Bark Shoppe is a pet care facility in New York offering grooming products and makeovers with your pet's individual needs in mind. Take a look and shop now to aBuyBlack: https://bitly/BarkShoppe #LiftBlackVoices #MoreTogether",
         cmnts: 100,
         date: 'Aug 26',
         shares: 20,
         reacts: 150,
         userImgLink: "https://i.pinimg.com/originals/c0/5b/41/c05b414d77a20762fede5eeed699605f.png",
         postImgLink: "https://static4.businessinsider.com/image/5ae2452f19ee8635008b45af-1500/puppy-dog-pet.jpg"
         
        

       );
       FacebookCardModel model2 = FacebookCardModel(
         fbname: 'Gaurav Dahal',
         postdetails: "#Flutter Course",
         cmnts: 1000,
         shares: 250,
         date: 'Jan 11',
         reacts: 500,
         userImgLink: "https://pbs.twimg.com/profile_images/619472491807838208/F70N-pvJ_400x400.jpg",
         postImgLink: "https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg"
         

        
       );
       FacebookCardModel model3 = FacebookCardModel(
         fbname: 'Rajesh Hamal',
         cmnts: 2000,
         shares: 15,
         postdetails: "#Memory",
         date: 'July 15',
         reacts: 4000,
         userImgLink: "https://myrepublica.nagariknetwork.com/uploads/media/RajeshHamal.jpg",
         postImgLink: "https://nepally.com/wp-content/uploads/2017/11/rajesh.jpg"
       );
       FacebookCardModel model4 = FacebookCardModel(

         fbname: 'M.S Dhoni',
         cmnts: 2000,
         shares: 80,
         date: 'Feb 2',
         postdetails: "#Cricket",
         reacts: 100,
         userImgLink: "https://c.ndtvimg.com/2020-07/m7opt04g_ms-dhoni-afp_625x300_06_July_20.jpg",
         postImgLink: "https://cdn.wionews.com/sites/default/files/styles/story_page/public/2019/06/04/97264-untitled-design-71.jpg"

       );
       FacebookCardModel model5 = FacebookCardModel(
         fbname: 'Gense Cloud',
         cmnts: 500,
         shares: 400,
         postdetails: "#E-learning",
         reacts: 1000,
         date: 'Sept 26',
         userImgLink: "https://media-exp1.licdn.com/dms/image/C510BAQEKVfCf70fN6A/company-logo_200_200/0?e=2159024400&v=beta&t=bhzBEbpaYQPVQg6pbU-ufEb4Hv8ciLNCsAD31WmzvaY",
         postImgLink: "https://www.genesecloud.academy/wp-content/uploads/2020/10/cloud-practitionerv3-1080x675.png",
       );
       FacebookCardModel model6 = FacebookCardModel(
         fbname: 'Viber',
         cmnts: 80,
         shares: 700,
         postdetails: "Now Esewa integration on Viber",
         reacts: 340,
         date: 'Jan 11',
         userImgLink: "https://www.clipartmax.com/png/middle/87-872578_viber-icon-transparent-png.png",
         postImgLink: "https://blog.esewa.com.np/wp-content/uploads/2020/12/viber.jpg"
       );
       FacebookCardModel model7 = FacebookCardModel(
         fbname: 'Whatsapp',
         postdetails: "Whatsapp Pay",
         cmnts: 400,
         reacts: 600,
         shares: 100,
         date: 'Dec 25',
         userImgLink: "https://png.pngtree.com/png-clipart/20190516/original/pngtree-whatsapp-icon-png-image_3584845.jpg",
         postImgLink: "https://i0.wp.com/technosports.co.in/wp-content/uploads/2020/11/How-to-use-WhatsApp-Pay-in-India_TechnoSports.co_.in_.jpg?fit=1280%2C720&ssl=1"
       );
       FacebookCardModel model8 = FacebookCardModel(
         fbname: 'Mark Zukerburg',
         cmnts: 298,
         postdetails: "#Facebook",
         shares: 14,
         reacts: 600,
         date: 'March 30',
         userImgLink: "https://banner2.cleanpng.com/20171217/f34/mark-zuckerberg-png-5a36aa59e3dff2.3813043015135319939334.jpg",
         postImgLink: "https://lh3.googleusercontent.com/proxy/dWUyDR6zaaGFNGH_Ru8lI0GpK9txeWr7jRxlEAC50BU2SEw6rQviY_kpCPePKtjthngyAJZ_-DpRc471LJxl4UucBSCfcHDbGzwatZs2-FvPM-PxXwYAmWhfPRwu7mKoQCswk9w"
       );
       FacebookCardModel model9 = FacebookCardModel(
         fbname: 'Elon Musk',
         cmnts: 79,
         shares: 456,
         postdetails: "#SpaceX",
         reacts: 800,
         date: 'April 19',
         userImgLink: "https://www.nicepng.com/png/detail/198-1986851_elon-musk-elon-musk-a-biography-of-business.png",
         postImgLink: "https://static.seekingalpha.com/uploads/2018/8/26/47444632-15353371925506494_origin.jpg"
       );
       FacebookCardModel model10 = FacebookCardModel(
         fbname: 'Nepal',
         cmnts: 100,
         postdetails: "#Nepal",
         shares: 350,
         reacts: 670,
         date: 'May 19',
        userImgLink: "https://cdn.countryflags.com/thumbs/nepal/flag-waving-250.png",
        postImgLink: "https://wallpaperaccess.com/full/166015.jpg"
       );
       

      return ListView(
        children: [

          _card(model1),
          _card(model2),
          _card(model3),
          _card(model4),
          _card(model5),
          _card(model6),
          _card(model7),
          _card(model8),
          _card(model9),
          _card(model10),

        ],
      );

  
  }

  Widget _card(FacebookCardModel fbmodel){

    
      return SizedBox(
        
        width: width,
        
        
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/details",arguments: fbmodel);
            },
                child: Card(
                  margin: EdgeInsets.only(top: 20),

                child: Column(

                  children: [

                    _firstRow(fbmodel),

                  
                    Container(
                      margin: EdgeInsets.only(right: 300.0),
                      child: Text(fbmodel.date,style: TextStyle(color: Colors.black45,fontSize: 12),)),

                    SizedBox(

                      height: 10,
                      
                    ),

                    Container(

                      
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.all(8.0),
                
                      alignment: Alignment.centerLeft,
                      

                      child: Text(fbmodel.postdetails)),


                      Container(

                        width: width,
                    
                      
                     
                      
                      height: 300,
                      child: Image.network(fbmodel.postImgLink,fit: BoxFit.fitWidth,)),


                    _secondLastRow(fbmodel),

                    Divider(
                      color: Colors.black38,
                    ),

                    _lastRow()
                    
                  ],

                ),
              ),
          ),
        
      );
    
  
  }

  Widget _likesharecomment(Widget widget1, String myStr){

    return Container(

      alignment: Alignment.centerRight,
      child: Row(
      children: [
      widget1,
      SizedBox(
      width:10,
      ),
      Text(myStr)
      ],
     ),

    );
  }

  Widget _lastRow(){

    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
               
            _likesharecomment(Image.network("https://png.pngitem.com/pimgs/s/0-6252_facebook-thumb-up-icon-transparent-likes-facebook-hd.png",
              height: 20,),'Like'),
        
            _likesharecomment(Image.network("https://www.nicepng.com/png/detail/49-499826_png-library-library-comment-transparent-icon-facebook-comment.png",
            height: 20,),'Comment'),
            _likesharecomment(Image.network("https://img.favpng.com/17/4/25/computer-icons-share-icon-sharing-png-favpng-q0nTUpQRiwdXb5aeHu2RS6MuU.jpg",
            height: 30,
            ),'Share'),

              ],
    );
  }

  Widget _firstRow(FacebookCardModel fbmodel){

    return Row(
                      
                      children: [

                        CircleAvatar(backgroundColor: Colors.white60,
      
                          child: CircleAvatar(
                          backgroundImage: NetworkImage(fbmodel.userImgLink.toString()),
                          radius: 20,),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(fbmodel.fbname, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        CircleAvatar(backgroundColor: Colors.white60,


      
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: CircleAvatar(
                            backgroundImage: NetworkImage("https://i0.wp.com/truecaller.blog/wp-content/uploads/2014/01/verified_badgy.png?fit=560%2C315&ssl=1"),
                            radius: 20,),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('updated their cover photo',style: TextStyle(color: Colors.black45,fontSize: 12),),
                        ),

                        new Spacer(), // to provide space as needed
                        
                        Icon(Icons.more_horiz)
                        
                      ],
                    );
  }

  Widget _secondLastRow(FacebookCardModel fbmodel){

    return Row(

                      children: [

                        Image.network("https://i.pinimg.com/originals/39/44/6c/39446caa52f53369b92bc97253d2b2f1.png",
                         width:40,
                         height:30,
                         ),

                         Image.network("https://png.pngtree.com/element_our/md/20180626/md_5b321ca7a1ca4.jpg",
                         width:40,
                         height:30,
                         
                         ),

                         Text(fbmodel.reacts.toString()),

                         SizedBox(

                          width: .3*width,

                         ),

                         Text(fbmodel.cmnts.toString()+' Comments .',style: TextStyle(color: Colors.black26,fontSize: 12),),

                         Text(fbmodel.shares.toString() +' Shares',style: TextStyle(color: Colors.black26,fontSize: 12),)



                      ],
                    );
  }
}