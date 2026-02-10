import 'package:flutter/material.dart';
import '../models/product.dart';

final sampleProducts = newMethod;

List<Product> get newMethod {
  return <Product>[
    // Hoodies / Jackets (10)
    Product(
      id: 'p1',
      name: 'Velvet Noir Hoodie',
      price: 220,
      description:
          'Classic mustard hoodie made from soft cotton blend, featuring drawstring hood and kangaroo pocket.',
      imageUrl:
          'https://noirinc.co/cdn/shop/products/mockup-ce45fb64_1024x1024@2x.jpg?v=1511063979',
      colors: [Color(0xFF23194F), Colors.blueGrey, Colors.grey],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p2',
      name: 'Royal Drift Hoodie',
      price: 180,
      description: 'Comfortable burgundy hoodie for everyday wear.',
      imageUrl:
          'https://i.etsystatic.com/56270739/r/il/b7628a/6609409858/il_570xN.6609409858_bbg5.jpg',
      colors: [Color(0xFF23194F), Colors.deepPurple],
      sizes: ['M', 'L', 'XL'],
    ),
    Product(
      id: 'p3',
      name: 'Opal Wear Hoodie',
      price: 320,
      description: 'Premium blue hoodie with a relaxed cut.',
      imageUrl:
          'https://australian-brand.com/cdn/shop/files/ARUFE0017-OPAL01-003-3.jpg?v=1722500666&width=2048',
      colors: [Colors.blue, Colors.indigo],
      sizes: ['S', 'M', 'L'],
    ),
    Product(
      id: 'p6',
      name: 'Urban Breeze Hoodie',
      price: 140,
      description: 'Lightweight urban hoodie with breathable fabric.',
      imageUrl:
          'https://www.urbanneeds.in/cdn/shop/files/DSCF7951.jpg?v=1767989297&width=1946',
      colors: [Colors.green, Colors.grey],
      sizes: ['S', 'M', 'L'],
    ),
    Product(
      id: 'p7',
      name: 'Metro Classic Hoodie',
      price: 150,
      description: 'A classic hoodie with modern fit and soft interior.',
      imageUrl:
          'https://shop.metro.net/cdn/shop/files/unisex-heavy-blend-zip-hoodie-carolina-blue-left-front-67d34f1a8260e.png?v=1741961320&width=533',
      colors: [Colors.black, Colors.white],
      sizes: ['M', 'L', 'XL'],
    ),
    Product(
      id: 'p8',
      name: 'Stonewash Hoodie',
      price: 160,
      description: 'Washed finish hoodie with relaxed feel.',
      imageUrl:
          'https://5.imimg.com/data5/SELLER/Default/2023/12/365242970/GU/BU/VJ/7633002/stone-wash-hoodie-500x500.jpg',
      colors: [Colors.grey, Colors.blueGrey],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p9',
      name: 'Canyon Fleece Hoodie',
      price: 170,
      description: 'Warm fleece hoodie for cooler days.',
      imageUrl:
          'https://www.ukgoodgoodgolf.uk/cdn/shop/files/canyon-fleece-hoodie_ls-1.jpg?v=1757714744&width=1946',
      colors: [Color(0xFF23194F), Colors.orange],
      sizes: ['M', 'L'],
    ),
    Product(
      id: 'p10',
      name: 'Aurora Zip Hoodie',
      price: 190,
      description: 'Full-zip hoodie with soft lining and durable zipper.',
      imageUrl:
          'https://cdn11.bigcommerce.com/s-s1ulo/images/stencil/1280x1280/products/6635/23168/ACAWHTATHLTCICONFLC18600RED_4600__71854.1660062552.jpg?c=2',
      colors: [Colors.deepOrange, Colors.black],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p11',
      name: 'Heritage Hoodie',
      price: 210,
      description: 'Heritage-styled hoodie with premium stitching.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4r0SLr1lq_ZdOLR-7gjnnbZ5oyKL_S_5VTw&s',
      colors: [Colors.green, Colors.blue],
      sizes: ['M', 'L', 'XL'],
    ),
    Product(
      id: 'p12',
      name: 'Summit Hoodie',
      price: 230,
      description: 'Technical hoodie built for outdoor comfort.',
      imageUrl:
          'https://summitclothing.com/cdn/shop/files/SMTFW24ECM_110_2048x2048.jpg?v=1759850277',
      colors: [Colors.grey, Colors.black],
      sizes: ['S', 'M', 'L'],
    ),

    // Shoes (10)
    Product(
      id: 'p4',
      name: 'Comfy Run Sneakers',
      price: 95,
      description: 'Lightweight running shoes with comfortable cushioning.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8fSEjQ-j_3XkVWCbco9K1z85POMXvJ6igfw&s',
      colors: [Colors.white, Colors.black],
      sizes: ['7', '8', '9', '10', '11'],
    ),
    Product(
      id: 'p13',
      name: 'Trailblazer Sneakers',
      price: 110,
      description: 'Durable trail sneakers with grippy sole.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRexXhgivZHTFHeFofUre-fco7swdpMNRPpag&s',
      colors: [Colors.green, Colors.black],
      sizes: ['8', '9', '10', '11'],
    ),
    Product(
      id: 'p14',
      name: 'City Runner Sneakers',
      price: 100,
      description: 'Urban running shoes with responsive midsole.',
      imageUrl:
          'https://www.paceathletic.com/cdn/shop/files/Mens-adidas-Adizero-Evo-SL-Woven-SolarBlue_SilverMetallic_LucidRed-JR2023.jpg?v=1764303281&width=2048',
      colors: [Colors.blue, Colors.white],
      sizes: ['7', '8', '9', '10'],
    ),
    Product(
      id: 'p15',
      name: 'Retro Court Sneakers',
      price: 85,
      description: 'Retro court-style sneakers with classic look.',
      imageUrl:
          'https://cdn14.nnnow.com/web-images/large/styles/KPTCWYS8JZB/1706167233285/1.jpg',
      colors: [Colors.white, Colors.red],
      sizes: ['8', '9', '10', '11'],
    ),
    Product(
      id: 'p16',
      name: 'Slip-On Casual Shoes',
      price: 70,
      description: 'Easy slip-on casual shoes for everyday wear.',
      imageUrl:
          'https://www.soloto.com/cdn/shop/products/1_c5d2b376-d7ca-4231-b79a-8f55dd8dc98b.jpg?v=1611724314',
      colors: [Color(0xFF23194F), Colors.black],
      sizes: ['7', '8', '9', '10'],
    ),
    Product(
      id: 'p17',
      name: 'Grip Pro Sneakers',
      price: 130,
      description: 'High-performance sneakers with outstanding grip.',
      imageUrl:
          'https://m.media-amazon.com/images/I/61MlbpzpPfL._AC_SL1001_.jpg',
      colors: [Colors.black, Colors.orange],
      sizes: ['8', '9', '10', '11'],
    ),
    Product(
      id: 'p18',
      name: 'Essential Canvas Shoes',
      price: 65,
      description: 'Lightweight canvas shoes for casual days.',
      imageUrl: 'https://i.ebayimg.com/images/g/uRAAAOSwmP5ej1UO/s-l1200.jpg',
      colors: [Colors.white, Colors.blue],
      sizes: ['7', '8', '9', '10'],
    ),
    Product(
      id: 'p19',
      name: 'Velocity Running Sneakers',
      price: 140,
      description: 'Speed-focused running sneakers with breathable mesh.',
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1000,h_1000/global/377749/09/sv01/fnd/NZL/fmt/png/VELOCITY-NITRO%E2%84%A2-3-Women',
      colors: [Colors.blue, Colors.black],
      sizes: ['8', '9', '10', '11'],
    ),
    Product(
      id: 'p20',
      name: 'Midnight Leather Shoes',
      price: 180,
      description: 'Premium leather shoes for dressy occasions.',
      imageUrl:
          'https://static.ftshp.digital/img/p/5/7/4/9/3/57493-full_product.jpg',
      colors: [Colors.black, Color(0xFF23194F)],
      sizes: ['8', '9', '10', '11'],
    ),
    Product(
      id: 'p21',
      name: 'Wave Runner Sneakers',
      price: 125,
      description: 'Comfortable everyday sneakers with wave sole.',
      imageUrl:
          'https://images.laced.com/products/1be81fe2-8533-4fbe-9114-979c7698391c.jpg?auto=format&fit=max&w=3840&q=75',
      colors: [Colors.white, Colors.grey],
      sizes: ['7', '8', '9', '10'],
    ),

    // Pants (10)
    Product(
      id: 'p5',
      name: 'Relaxed Fit Pants',
      price: 120,
      description:
          'Everyday relaxed pants with breathable fabric and tapered ankle.',
      imageUrl:
          'https://bananaclub.co.in/cdn/shop/files/CreamRelaxedFitTrouser_7.jpg?v=1738820066',
      colors: [Colors.grey, Colors.black],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p22',
      name: 'Chino Comfort Pants',
      price: 105,
      description: 'Smart chinos with stretch for comfort.',
      imageUrl:
          'https://mugsyjeans.com/cdn/shop/products/Mugsy_Chinos_Studio_Teddys1.jpg?v=1741108058',
      colors: [Color(0xFF23194F), Colors.blue],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p23',
      name: 'Tapered Jogger Pants',
      price: 85,
      description: 'Casual jogger pants with elastic ankle and soft fabric.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGpQK7B935RXr1ijNc3EOwll3IFojIAD54DQ&s',
      colors: [Colors.black, Colors.grey],
      sizes: ['S', 'M', 'L'],
    ),
    Product(
      id: 'p24',
      name: 'Linen Summer Pants',
      price: 95,
      description: 'Breathable linen pants ideal for warm weather.',
      imageUrl:
          'https://img.kwcdn.com/product/fancy/8de90a21-d594-4be6-bdd9-c98ca35713e4.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp',
      colors: [Color(0xFF23194F), Colors.white],
      sizes: ['S', 'M', 'L'],
    ),
    Product(
      id: 'p25',
      name: 'Cargo Utility Pants',
      price: 110,
      description: 'Cargo pants with multiple pockets for utility.',
      imageUrl:
          'https://xcdn.next.co.uk/common/items/default/default/itemimages/3_4Ratio/product/lge/871124s4.jpg?im=Resize,width=750',
      colors: [Colors.green, Color(0xFF23194F)],
      sizes: ['M', 'L', 'XL'],
    ),
    Product(
      id: 'p26',
      name: 'Slim Stretch Pants',
      price: 125,
      description: 'Slim fit pants with 4-way stretch fabric.',
      imageUrl:
          'https://pantproject.com/cdn/shop/files/DSC07888-edited.png?v=1764078226&width=1080',
      colors: [Colors.black, Colors.grey],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p27',
      name: 'Corduroy Pants',
      price: 115,
      description: 'Textured corduroy pants for a retro touch.',
      imageUrl:
          'https://bananaclub.co.in/cdn/shop/files/Tan_Corduroy_Pants_4.jpg?v=1763188870',
      colors: [Color(0xFF23194F), Colors.green],
      sizes: ['M', 'L', 'XL'],
    ),
    Product(
      id: 'p28',
      name: 'Performance Track Pants',
      price: 90,
      description: 'Lightweight track pants with moisture-wicking fabric.',
      imageUrl:
          'https://www.newtheoryclothing.com/cdn/shop/files/EPRNAVYTRACKPANTS-3.jpg?v=1695027394',
      colors: [Colors.black, Colors.blue],
      sizes: ['S', 'M', 'L'],
    ),
    Product(
      id: 'p29',
      name: 'Classic Denim Pants',
      price: 135,
      description: 'Hard-wearing denim with a classic straight fit.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbdER9EipCRddEB7FUeZHJyOZReD-ibWBQyQ&s',
      colors: [Colors.blue, Colors.indigo],
      sizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: 'p30',
      name: 'Wool Blend Pants',
      price: 150,
      description: 'Warm wool-blend pants for cooler months.',
      imageUrl:
          'https://www.remusuomo.com/cdn/shop/files/4_72650_06_00.jpg?v=1724151905',
      colors: [Colors.grey, Colors.black],
      sizes: ['M', 'L', 'XL'],
    ),
  ];
}
