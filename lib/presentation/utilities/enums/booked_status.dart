enum BookedStatus {
  booked,
  available,
}

extension BookedStatusExtension on BookedStatus {
  String get value {
    switch (this) {
      case BookedStatus.booked:
        return 'BOOKED';
      case BookedStatus.available:
        return 'AVAILABLE';
    }
  }
}
