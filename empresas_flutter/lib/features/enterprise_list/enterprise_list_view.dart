import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'components/enterprise_item_layout.dart';
import 'components/list_search_field.dart';
import 'components/list_top_banner.dart';
import 'viewmodel/enterprise_list_viewmodel.dart';

class EnterpriseListView extends BaseLayout<EnterpriseListViewModel, AppState> {
  @override
  EnterpriseListViewModel convertViewModel(Store<AppState> store) =>
      EnterpriseListViewModel(store);

  @override
  Widget layout(
      BuildContext ctx, EnterpriseListViewModel vm, BoxConstraints cts) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: [
            Column(
              children: [
                ListTopBanner(cts: cts),
                Container(
                  height: (cts.maxHeight * 0.04),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: cts.padding(0.06)),
              child: ListSearchField(
                onSubmit: vm.searchEnterprise,
              ),
            )
          ],
        ),
        Expanded(child: _buildEnterpriseList(vm, cts))
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
      return Padding(
        padding: EdgeInsets.all(cts.padding(0.06)),
        child: ListView.builder(
            itemCount: vm.enterpriseList.length,
            itemBuilder: (ctx, i) => EnterpriseItemLayout(
                  cts: cts,
                  goToDetails: vm.goToDetails,
                  info: vm.enterpriseList[i],
                )),
      );
    } else {
      return Center(
        child: Text(
          'Nenhum resultado encontrado',
          style: TextStyle(fontSize: 16),
        ),
      );
    }
  }
}
