# data-platform-bus-line-sql 

data-platform-bus-line-sql は、データ連携基盤において、バス路線データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-bus-line-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-bus-line-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-bus-line-sql-header-data.sql（データ連携基盤 バス路線 - ヘッダデータ）
* data-platform-bus-line-sql-bus-stop-data.sql（データ連携基盤 バス路線 - 停車バス停データ）
* data-platform-bus-line-sql-express-type-data.sql（データ連携基盤 バス路線 - エクスプレスタイプデータ）
* data-platform-bus-line-sql-express-bus-stop-data.sql（データ連携基盤 バス路線 - エクスプレス停車バス停データ）
* data-platform-bus-line-sql-departure-bus-stop-data.sql（データ連携基盤 バス路線 - 始点バス停データ）
* data-platform-bus-line-sql-destination-bus-stop-data.sql（データ連携基盤 バス路線 - 終着バス停データ）
* data-platform-bus-line-sql-dpt-dst-bus-stop-data.sql（データ連携基盤 バス路線 - 始点終着バス停データ）
* data-platform-bus-line-sql-header-doc-data.sql（データ連携基盤 バス路線 - ヘッダ文書データ）
* data-platform-bus-line-sql-partner-data.sql（データ連携基盤 バス路線 - パートナデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
