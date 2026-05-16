import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

import 'map_location_picker_page.dart';

class DevPage extends StatelessWidget {
  const DevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dev')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('위치 · 주소 선택 (Geocoding)'),
            subtitle: const Text('주소·건물명 검색 또는 지도 드래그로 좌표·주소 조회'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const MapLocationPickerPage(),
                ),
              );
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('기본 네이버 지도'),
            subtitle: Text('서울시청 마커 샘플'),
          ),
          const SizedBox(
            height: 320,
            child: _BasicNaverMapPreview(),
          ),
        ],
      ),
    );
  }
}

class _BasicNaverMapPreview extends StatelessWidget {
  const _BasicNaverMapPreview();

  @override
  Widget build(BuildContext context) {
    const NLatLng seoulCityHall = NLatLng(37.5666, 126.979);
    return NaverMap(
      options: const NaverMapViewOptions(
        initialCameraPosition: NCameraPosition(target: seoulCityHall, zoom: 14),
      ),
      onMapReady: (NaverMapController controller) {
        final NMarker marker = NMarker(
          id: 'city_hall',
          position: seoulCityHall,
          caption: const NOverlayCaption(text: '서울시청'),
        );
        controller.addOverlay(marker);
      },
    );
  }
}
