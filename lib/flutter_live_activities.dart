import 'flutter_live_activities_platform_interface.dart';

class FlutterLiveActivities {
  /// Get launch uri
  Future<String?> getInitUri() {
    return FlutterLiveActivitiesPlatform.instance.getInitUri();
  }

  /// Get all activities id
  Future<List<String>> getAllActivities() {
    return FlutterLiveActivitiesPlatform.instance.getAllActivities();
  }

  /// Create an iOS 16.1+ live activity.
  /// When the activity is created, an activity id is returned.
  /// Data is a map of key/value pairs that will be transmitted to your iOS extension widget.
  /// Map is limited to String keys and values for now.
  Future<String?> createActivity(Map<String, String> data) async {
    return FlutterLiveActivitiesPlatform.instance.createActivity(data);
  }

  /// Update an iOS 16.1+ live activity.
  /// You can get an activity id by calling [createActivity].
  /// Data is a map of key/value pairs that will be transmitted to your iOS extension widget.
  /// Map is limited to String keys and values for now.
  Future<void> updateActivity(String liveId, Map<String, String> data) {
    return FlutterLiveActivitiesPlatform.instance.updateActivity(liveId, data);
  }

  /// End an iOS 16.1+ live activity.
  /// You can get an activity id by calling [createActivity].
  Future<void> endActivity(String liveId) {
    return FlutterLiveActivitiesPlatform.instance.endActivity(liveId);
  }

  /// End an iOS 16.1+ live activity.
  /// You can get an activity id by calling [createActivity].
  Future<void> endAllActivities() {
    return FlutterLiveActivitiesPlatform.instance.endAllActivities();
  }

  /// Check if iOS 16.1+ live activities are enabled.
  /// If they are not enabled, you will not be able to create activities.
  Future<bool> areActivitiesEnabled() {
    return FlutterLiveActivitiesPlatform.instance.areActivitiesEnabled();
  }

  Stream<String?> uriStream({String urlScheme = 'FLA'}) {
    return FlutterLiveActivitiesPlatform.instance
        .uriStream(urlScheme: urlScheme);
  }
}
