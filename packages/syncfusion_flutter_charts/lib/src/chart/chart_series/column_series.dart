import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// This class has the properties of the column series.
///
/// To render a column chart, create an instance of [ColumnSeries], and add it to the series collection property of [SfCartesianChart].
/// The column series is a rectangular column with heights or lengths proportional to the values that they represent. It has the spacing
/// property to separate the column.
///
/// Provide the options of color, opacity, border color, and border width to customize the appearance.
///
class ColumnSeries<T, D> extends XyDataSeries<T, D> {
  /// Creating an argument constructor of ColumnSeries class.
  ColumnSeries({
    ValueKey<String>? key,
    ChartSeriesRendererFactory<T, D>? onCreateRenderer,
    required List<T> dataSource,
    required ChartValueMapper<T, D> xValueMapper,
    required ChartValueMapper<T, num> yValueMapper,
    ChartValueMapper<T, dynamic>? sortFieldValueMapper,
    ChartValueMapper<T, Color>? pointColorMapper,
    ChartValueMapper<T, String>? dataLabelMapper,
    SortingOrder? sortingOrder,
    this.isTrackVisible = false,
    String? xAxisName,
    String? yAxisName,
    String? name,
    Color? color,
    double? width,
    this.spacing = 0,
    MarkerSettings? markerSettings,
    List<Trendline>? trendlines,
    EmptyPointSettings? emptyPointSettings,
    DataLabelSettings? dataLabelSettings,
    bool? isVisible,
    LinearGradient? gradient,
    LinearGradient? borderGradient,
    this.borderRadius = BorderRadius.zero,
    bool? enableTooltip,
    double? animationDuration,
    this.trackColor = Colors.grey,
    this.trackBorderColor = Colors.transparent,
    this.trackBorderWidth = 1,
    this.trackPadding = 0,
    Color? borderColor,
    double? borderWidth,
    SelectionBehavior? selectionBehavior,
    bool? isVisibleInLegend,
    LegendIconType? legendIconType,
    String? legendItemText,
    double? opacity,
    double? animationDelay,
    List<double>? dashArray,
    SeriesRendererCreatedCallback? onRendererCreated,
    List<int>? initialSelectedDataIndexes,
    ChartPointInteractionCallback? onPointTap,
    ChartPointInteractionCallback? onPointDoubleTap,
    ChartPointInteractionCallback? onPointLongPress,
    CartesianShaderCallback? onCreateShader,
  }) : super(
            key: key,
            onCreateRenderer: onCreateRenderer,
            name: name,
            xValueMapper: xValueMapper,
            yValueMapper: yValueMapper,
            sortFieldValueMapper: sortFieldValueMapper,
            pointColorMapper: pointColorMapper,
            dataLabelMapper: dataLabelMapper,
            dataSource: dataSource,
            xAxisName: xAxisName,
            yAxisName: yAxisName,
            trendlines: trendlines,
            color: color,
            width: width ?? 0.7,
            markerSettings: markerSettings,
            dataLabelSettings: dataLabelSettings,
            isVisible: isVisible,
            gradient: gradient,
            borderGradient: borderGradient,
            emptyPointSettings: emptyPointSettings,
            enableTooltip: enableTooltip,
            animationDuration: animationDuration,
            borderColor: borderColor,
            borderWidth: borderWidth,
            selectionBehavior: selectionBehavior,
            legendItemText: legendItemText,
            isVisibleInLegend: isVisibleInLegend,
            legendIconType: legendIconType,
            sortingOrder: sortingOrder,
            opacity: opacity,
            animationDelay: animationDelay,
            onCreateShader: onCreateShader,
            dashArray: dashArray,
            onRendererCreated: onRendererCreated,
            initialSelectedDataIndexes: initialSelectedDataIndexes,
            onPointTap: onPointTap,
            onPointDoubleTap: onPointDoubleTap,
            onPointLongPress: onPointLongPress);

  ///Color of the track.
  ///
  ///Defaults to `grey`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  isTrackVisible: true,
  ///                  trackColor: Colors.red
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final Color trackColor;

  ///Color of the track border.
  ///
  ///Defaults to `transparent`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  isTrackVisible: true,
  ///                  trackBorderColor: Colors.red
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final Color trackBorderColor;

  ///Width of the track border.
  ///
  ///Defaults to `1`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  isTrackVisible: true,
  ///                  trackBorderColor: Colors.red ,
  ///                  trackBorderWidth: 2
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final double trackBorderWidth;

  ///Padding of the track.
  ///
  ///Defaults to `0`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  isTrackVisible: true,
  ///                  trackPadding: 2
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final double trackPadding;

  ///Spacing between the columns. The value ranges from 0 to 1.
  ///1 represents 100% and 0 represents 0% of the available space.
  ///
  ///Spacing also affects the width of the column. For example, setting 20% spacing
  ///and 100% width renders the column with 80% of total width.
  ///
  ///Defaults to `0`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  spacing: 0,
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final double spacing;

  ///Renders column with track.
  ///
  ///Track is a rectangular bar rendered from the start to the end of the axis. Column series will be rendered above the track.
  ///
  ///Defaults to `false`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  isTrackVisible: true,
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final bool isTrackVisible;

  ///Customizes the corners of the column.
  ///
  /// Each corner can be customized with a desired value or with a single value.
  ///
  ///Defaults to `Radius.zero`
  ///
  ///```dart
  ///Widget build(BuildContext context) {
  ///    return Container(
  ///        child: SfCartesianChart(
  ///            selectionGesture: ActivationMode.doubleTap,
  ///            series: <ColumnSeries<SalesData, num>>[
  ///                ColumnSeries<SalesData, num>(
  ///                  borderRadius: BorderRadius.circular(5),
  ///                ),
  ///              ],
  ///        ));
  ///}
  ///```
  final BorderRadius borderRadius;

  /// Create the column series renderer.
  ColumnSeriesRenderer createRenderer(ChartSeries<T, D> series) {
    ColumnSeriesRenderer seriesRenderer;
    if (onCreateRenderer != null) {
      seriesRenderer = onCreateRenderer!(series) as ColumnSeriesRenderer;
      // ignore: unnecessary_null_comparison
      assert(seriesRenderer != null,
          'This onCreateRenderer callback function should return value as extends from ChartSeriesRenderer class and should not be return value as null');
      return seriesRenderer;
    }
    return ColumnSeriesRenderer();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is ColumnSeries &&
        other.key == key &&
        other.onCreateRenderer == onCreateRenderer &&
        other.dataSource == dataSource &&
        other.xValueMapper == xValueMapper &&
        other.yValueMapper == yValueMapper &&
        other.sortFieldValueMapper == sortFieldValueMapper &&
        other.pointColorMapper == pointColorMapper &&
        other.dataLabelMapper == dataLabelMapper &&
        other.sortingOrder == sortingOrder &&
        other.xAxisName == xAxisName &&
        other.yAxisName == yAxisName &&
        other.name == name &&
        other.color == color &&
        other.markerSettings == markerSettings &&
        other.emptyPointSettings == emptyPointSettings &&
        other.dataLabelSettings == dataLabelSettings &&
        other.trendlines == trendlines &&
        other.isVisible == isVisible &&
        other.enableTooltip == enableTooltip &&
        other.dashArray == dashArray &&
        other.animationDuration == animationDuration &&
        other.borderColor == borderColor &&
        other.borderWidth == borderWidth &&
        other.gradient == gradient &&
        other.borderGradient == borderGradient &&
        other.selectionBehavior == selectionBehavior &&
        other.isVisibleInLegend == isVisibleInLegend &&
        other.legendIconType == legendIconType &&
        other.legendItemText == legendItemText &&
        other.opacity == opacity &&
        other.animationDelay == animationDelay &&
        other.trackColor == trackColor &&
        other.trackBorderColor == trackBorderColor &&
        other.trackBorderWidth == trackBorderWidth &&
        other.trackPadding == trackPadding &&
        other.spacing == spacing &&
        other.borderRadius == borderRadius &&
        other.isTrackVisible == isTrackVisible &&
        other.onRendererCreated == onRendererCreated &&
        other.initialSelectedDataIndexes == initialSelectedDataIndexes &&
        other.onPointTap == onPointTap &&
        other.onPointDoubleTap == onPointDoubleTap &&
        other.onPointLongPress == onPointLongPress &&
        other.onCreateShader == onCreateShader;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      key,
      onCreateRenderer,
      dataSource,
      xValueMapper,
      yValueMapper,
      sortFieldValueMapper,
      pointColorMapper,
      dataLabelMapper,
      sortingOrder,
      xAxisName,
      yAxisName,
      name,
      color,
      markerSettings,
      emptyPointSettings,
      dataLabelSettings,
      trendlines,
      isVisible,
      enableTooltip,
      dashArray,
      animationDuration,
      borderColor,
      borderWidth,
      gradient,
      borderGradient,
      selectionBehavior,
      isVisibleInLegend,
      legendIconType,
      legendItemText,
      opacity,
      animationDelay,
      trackColor,
      trackBorderColor,
      trackBorderWidth,
      trackPadding,
      spacing,
      borderRadius,
      isTrackVisible,
      initialSelectedDataIndexes,
      onRendererCreated,
      onPointTap,
      onPointDoubleTap,
      onPointLongPress
    ];
    return hashList(values);
  }
}
