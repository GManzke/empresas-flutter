import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:redux/redux.dart';

import 'components/enterprise_item_layout.dart';
import 'components/list_search_field.dart';
import 'components/list_top_banner.dart';
import 'viewmodel/enterprise_list_viewmodel.dart';

class EnterpriseListView extends BaseLayout<EnterpriseListViewModel, AppState> {
  final _textStyle = TextStyle(fontSize: 16, color: AppColors.textColor);

  @override
  EnterpriseListViewModel convertViewModel(Store<AppState> store) =>
      EnterpriseListViewModel(store);

  @override
  void onInit(Store<AppState> store) {
    store.dispatch(SearchEnterpriseAction(''));
    super.onInit(store);
  }

  @override
  Widget layout(
      BuildContext ctx, EnterpriseListViewModel vm, BoxConstraints cts) {
    _hasError(vm, ctx);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            ListTopBanner(cts: cts),
            Padding(
              padding: EdgeInsets.only(
                  top: cts.maxHeight * 0.2 - 30,
                  left: cts.padding(0.06),
                  right: cts.padding(0.06)),
              child: ListSearchField(
                onSubmit: vm.searchEnterprise,
              ),
            ),
            Positioned(
              top: MediaQuery.of(ctx).padding.top,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(cts.padding(0.06)),
                child: GestureDetector(
                  onTap: vm.logOut,
                  child: Icon(
                    Icons.logout,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: cts.padding(0.06)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (vm.enterpriseList.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: cts.padding(0.04)),
                    child: Text(
                      '${vm.enterpriseList.length} resultado(s) encontrado(s)',
                      style: _textStyle,
                    ),
                  ),
                Expanded(child: _buildEnterpriseList(vm, cts))
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildEnterpriseList(EnterpriseListViewModel vm, BoxConstraints cts) {
    if (vm.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (vm.enterpriseList.isNotEmpty) {
      return ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: vm.enterpriseList.length,
          itemBuilder: (ctx, i) => EnterpriseItemLayout(
                goToDetails: vm.goToDetails,
                info: vm.enterpriseList[i],
                cts: cts,
              ));
    } else {
      return Center(
        child: Text(
          'Nenhum resultado encontrado',
          style: _textStyle,
        ),
      );
    }
  }

  void _hasError(EnterpriseListViewModel vm, BuildContext ctx) {
    if (vm.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showSimpleNotification(Text(vm.error.major), background: Colors.red);
        vm.clearError();
      });
    }
  }
}
