_updateUserMarkerAndCamera(Position position) async {
    final GoogleMapController controller =
        await _googleMapControllerCompleter.future;
    userLocation = position;
    LatLng latLngPosition = LatLng(position.latitude, position.longitude);
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLngPosition,
          zoom: kDefaultZoom,
        ),
      ),
    );

    
    //and some other logics
  }

//   Timer(Duration(milliseconds: 500), () async {
//       await controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: location, zoom: 10.1)));
// });