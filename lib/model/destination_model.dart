// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DestinationModel {
  final String name;
  final String description;
  final String imagePath;
  final bool isFavorite;
  final double rating;
  final String location;
  DestinationModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.isFavorite,
    required this.rating,
    required this.location,
  });

  DestinationModel copyWith({
    String? name,
    String? description,
    String? imagePath,
    bool? isFavorite,
    double? rating,
    String? location,
  }) {
    return DestinationModel(
      name: name ?? this.name,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      isFavorite: isFavorite ?? this.isFavorite,
      rating: rating ?? this.rating,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'imagePath': imagePath,
      'isFavorite': isFavorite,
      'rating': rating,
      'location': location,
    };
  }

  factory DestinationModel.fromMap(Map<String, dynamic> map) {
    return DestinationModel(
      name: map['name'] as String,
      description: map['description'] as String,
      imagePath: map['imagePath'] as String,
      isFavorite: map['isFavorite'] as bool,
      rating: map['rating'] as double,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DestinationModel.fromJson(String source) =>
      DestinationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DestinationModel(name: $name, description: $description, imagePath: $imagePath, isFavorite: $isFavorite, rating: $rating, location: $location)';
  }

  @override
  bool operator ==(covariant DestinationModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.description == description &&
      other.imagePath == imagePath &&
      other.isFavorite == isFavorite &&
      other.rating == rating &&
      other.location == location;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      imagePath.hashCode ^
      isFavorite.hashCode ^
      rating.hashCode ^
      location.hashCode;
  }
}
