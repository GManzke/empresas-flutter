import 'package:auto_size_text/auto_size_text.dart';
import 'package:empresas_flutter/configuration/app_config.dart';
import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:flutter/material.dart';

class EnterpriseItemLayout extends StatelessWidget {
  final Function(Enterprise) goToDetails;
  final BoxConstraints cts;
  final Enterprise info;

  const EnterpriseItemLayout({Key key, this.goToDetails, this.cts, this.info})
      : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => goToDetails(info),
      child: Padding(
        padding: EdgeInsets.only(bottom: cts.padding(0.06)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Hero(
              tag: info.id,
              child: Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  'https://${AppConfig.authority}${info.photo}',
                  color: Colors.black.withOpacity(0.4),
                  colorBlendMode: BlendMode.darken,
                  height: cts.maxHeight * 0.26,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Image.asset('assets/blank_enterprise_banner.png'),
                ),
                width: double.infinity,
              ),
            ),
            AutoSizeText(
              info.enterpriseName,
              style: TextStyle(color: Colors.white, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
