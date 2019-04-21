import 'package:flutter/material.dart';


class Product{
  final String pName;
  final String imgUrl;
  final int price;

  Product(this.pName, this.imgUrl, this.price);



}

final List<Product> plists = [
  Product('【新品首销享五重豪礼】华为HONOR/荣耀 荣耀20i 全网通4G官方旗舰店珍珠全面屏智能手机', 'https://img.alicdn.com/imgextra/i2/2616970884/O1CN01mYNdYJ1IOudgmn8PO_!!2616970884.jpg_430x430q90.jpg', 2200),
  Product('MIJIA/米家 小米大1.5匹 变频一级 智能挂机空调KFR-35GW-B1ZM-M1', 'https://img.alicdn.com/imgextra/i1/2616970884/O1CN01GXm8cp1IOubuLHIWy_!!2616970884.jpg_430x430q90.jpg', 2499),
  Product('Hisense/海信 H55E3A 55英寸4K超高清 人工智能液晶平板电视机', 'https://img.alicdn.com/imgextra/i1/2616970884/O1CN01juKl0J1IOubg3aErk_!!2616970884.jpg_430x430q90.jpg', 2299),
  Product('PPTV智能电视5 32英寸8GB大存储64位4核高清智能液晶电视 40 43', 'https://img.alicdn.com/imgextra/i3/2616970884/O1CN01XocQcm1IOudh4qUea_!!2616970884.jpg_430x430q90.jpg', 799),
  Product('方太EMD6T+HT8BE/GT6BE吸家用抽油烟机燃气灶套餐煤气灶烟灶套装', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2616970884/O1CN011IOuah2CVNYK4Vy_!!2616970884.jpg_430x430q90.jpg', 4199)
];

class MyListview extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(plists[index].imgUrl),
          SizedBox(height: 16.0,),
          Text(
            plists[index].pName,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            plists[index].price.toString(),
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: plists.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
