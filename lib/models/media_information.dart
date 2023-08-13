/*
 * Copyright (c) 2020 Taner Sener
 *
 * This file is part of FlutterFFmpeg.
 *
 * FlutterFFmpeg is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FlutterFFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with FlutterFFmpeg.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter_ffmpeg/models/media_info.dart';

class MediaInformation {
  final Map<dynamic, dynamic>? allInfoAsMap;

  /// Creates a new [MediaInformation] instance
  const MediaInformation(this.allInfoAsMap);
}

extension MediaInformationUtils on MediaInformation {
  MediaInfo? get allInfo =>
      allInfoAsMap == null ? null : MediaInfo.fromMap(allInfoAsMap!);
  List<MIStream>? get streams => allInfo?.streams;
  MIFormat? get formatProperties => allInfo?.format;
  MIFormatTags? get tags => formatProperties?.tags;
}
