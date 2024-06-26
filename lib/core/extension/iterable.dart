extension Convenience<T> on Iterable<T> {
  T? tryElementAt(int index) {
    if (index < length) {
      return elementAt(index);
    }
    return null;
  }
}