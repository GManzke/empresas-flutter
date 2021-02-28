import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:empresas_flutter/configuration/app_config.dart';
import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:empresas_flutter/features/enterprise_detail/viewmodel/enterprise_detail_viewmodel.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class EnterpriseDetailView
    extends BaseLayout<EnterpriseDetailViewModel, AppState> {
  final Enterprise info;

  EnterpriseDetailView({this.info});

  @override
  EnterpriseDetailViewModel convertViewModel(Store<AppState> store) =>
      EnterpriseDetailViewModel(store);

  @override
  Widget layout(
      BuildContext ctx, EnterpriseDetailViewModel vm, BoxConstraints cts) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: cts.maxHeight * 0.1,
          padding: EdgeInsets.all(
            cts.padding(0.04),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.primary,
                    size: 24,
                  ),
                ),
              ),
              Text(
                info.enterpriseName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              AspectRatio(
                aspectRatio: 1.0,
                child: Container(),
              ),
            ],
          ),
        ),
        Hero(
          tag: info.id,
          child: Container(
            child: Image.network('https://${AppConfig.authority}${info.photo}'),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(cts.padding(0.06)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      info.description,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
