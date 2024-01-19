class FruitsAndVegitables {
  final String productName;
  final int productPrice;
  final String productQuantity;
  final String productCancelledPrice;
  final String productImage;

  FruitsAndVegitables(
      {required this.productName,
      required this.productPrice,
      required this.productQuantity,
      required this.productCancelledPrice,
      required this.productImage});

  List<FruitsAndVegitables> vegitablesList = [
         
        //FirstList 

        FruitsAndVegitables(
        productName: 'Apple Royal Gala Indian',
        productPrice: 247,
        productQuantity: '4 pcs (Approx. 450g - 550g)',
        productCancelledPrice: '208',
        productImage: 'Assets/Images/apple.png'),
  
        // Second Item List 
       
        FruitsAndVegitables(
        productName: 'Tender Cocount',
        productPrice: 255,
        productQuantity: '3pc',
        productCancelledPrice: '204',
        productImage: 'Assets/Images/ccnt.png'),

        // Third Item List 
   
        FruitsAndVegitables(
        productName: 'Kiwi Green Semi Ripe',
        productPrice: 190,
        productQuantity: '3 pcs (Approx. 250g - 300g)',
        productCancelledPrice: '160',
        productImage: 'Assets/Images/kiwi.png'),

        // Fourth Item List 
   
        FruitsAndVegitables(
        productName: 'Banana Robusta Semi Ripe',
        productPrice: 78,
        productQuantity: '500 g',
        productCancelledPrice: '65',
        productImage: 'Assets/Images/Banana.png'),

        // Fifth Item List 
   
        FruitsAndVegitables(
        productName: 'Pear Babugosha Green',
        productPrice: 138,
        productQuantity: '550',
        productCancelledPrice: '160',
        productImage: 'Assets/Images/bbg.png'),

        // Sixth Item List 
   
        FruitsAndVegitables(
        productName: 'Chikoo',
        productPrice: 71,
        productQuantity: '550g',
        productCancelledPrice: '59',
        productImage: 'AAssets/Images/chickoo.png'),
  ];
}
