# MATLABによる予知保全のデモ

IoT (Internet of Things) とビッグデータの利用拡大にともない、さまざまな分野で予知保全 (PdM: Predictive Maintenance) の重要性が高まっています。なかでも、膨大なデータの中から異常状態を検出することは、例えば装置故障の予兆を事前に察知することにもつながるため重要です。

データをもとに異常状態を検出する手法として、これまで様々な手法が提案されています。そのなかでも、多次元データの中から「教師なし」で異常を検出する手法は、あまり異常が発生しないケースに適用可能であることから、実用上とても重要な手法といえます。そこで本デモでは、「教師無し」で異常を検出する以下の3つの手法を具体例とともに紹介します。

1. ホテリングのT2法 (Htelling's T-square method)
2. 混合分布モデルによる異常検知
3. 1-class SVMによる異常検知

より現実に即したデモとするため、以下のデモでは C-MAPSST (Commercial Modular Aero-Propulsion SystemSimulation) によるターボファンエンジン (Turbofan engine) のセンサーデータセット [1, 2] を使用します。このデータセットには、多数のターボファンエンジン (航空機用エンジンの一種) について、メンテナンス直後から故障が発生するまでの間に得られた各種センサーデータが含まれています。

※本デモは、Demo Files for Predictive Maintenance [3] の日本語訳です。

# 参考
[1] A. Saxena, K. Goebel, D. Simon and N. Eklund, "Damage Propagation Modeling for Aircraft Engine Run-to-Failure Simulation," International Conference on Prognostics and Health Management, (2008).

[2] Turbofan Engine Degradation Simulation Data Set, https://ti.arc.nasa.gov/tech/dash/groups/pcoe/prognostic-data-repository/#turbofan

[3] Akira Agata (2020). Demo Files for Predictive Maintenance (https://www.mathworks.com/matlabcentral/fileexchange/63012-demo-files-for-predictive-maintenance), MATLAB Central File Exchange. Retrieved December 1, 2020.
