import 'package:cosmemo/image-container.dart';
import 'package:cosmemo/rounded-button.dart';
import 'package:cosmemo/section-head.dart';
import 'package:cosmemo/table-list-item.dart';
import 'package:cosmemo/tag-badge.dart';
import 'package:cosmemo/data-table.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageContainer(),
              DetailHead(),
              Tags(),
              SizedBox(height: 32.0),
              SectionHead(text: '詳細情報'),
              ItemDetails(),
              SizedBox(height: 32.0),
              SectionHead(text: '組み合わせアイテム'),
              CombinationItems(),
            ],
          ),
        ),
      ),
    );
  }
}

class CombinationItems extends StatelessWidget {
  const CombinationItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableListItem(),
        TableListItem(),
      ],
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTableRow(
          dataTitle: 'レビュー',
          dataDescription:
              'パケもかわいい！ラシャスに続くなんかいいリップはないかと思い出会ったのがこのリップ。\n\nボリュームがでてくれてしっとり、ケアしてくれる感じのリップが大好きで、お値段も7500円プラス税ということでラシャスと同じお値段',
        ),
        DataTableRow(
          dataTitle: '利用期間',
          dataDescription: '2019年12月〜2020年12月',
        ),
        DataTableRow(
          dataTitle: '価格',
          dataDescription: '1,200円',
        ),
        DataTableRow(
          dataTitle: '購入店舗',
          dataDescription: 'マツモトキヨシ',
        ),
      ],
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 10, right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            //direction: Axis.vertical,
            spacing: 8.0,
            runSpacing: 8.0,
            children: <Widget>[
              TagBadge(tag: 'プチプラ'),
              TagBadge(tag: 'デバコス'),
              TagBadge(tag: '失敗コスメ'),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailHead extends StatelessWidget {
  const DetailHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'アイテムの名前が入ります',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'アイテムのキャプション',
                  style: TextStyle(fontSize: 12.0),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          RoundButton(icon: Icons.favorite_border_rounded),
          SizedBox(
            width: 12.0,
          ),
          RoundButton(icon: Icons.edit),
        ],
      ),
    );
  }
}
