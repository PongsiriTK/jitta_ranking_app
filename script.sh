#!/bin/bash

# Create core directories
mkdir -p lib/core/{error,network,utils}

# Create data directories
mkdir -p lib/data/{datasources,models,repositories}
touch lib/data/datasources/{stock_remote_datasource.dart,stock_local_datasource.dart}
touch lib/data/models/{stock_model.dart,stock_detail_model.dart}
touch lib/data/repositories/stock_repository_impl.dart

# Create domain directories
mkdir -p lib/domain/{entities,repositories,usecases}
touch lib/domain/entities/{stock.dart,stock_detail.dart}
touch lib/domain/repositories/stock_repository.dart
touch lib/domain/usecases/{get_stocks.dart,get_stock_detail.dart}

# Create presentation directories
mkdir -p lib/presentation/{bloc/stock_list,bloc/stock_detail,pages,widgets}
touch lib/presentation/pages/{home_page.dart,stock_detail_page.dart}

echo "Flutter project directory structure created successfully!"