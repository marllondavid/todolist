import 'package:todolist/app/core/database/migrations/migration.dart';
import 'package:todolist/app/core/database/migrations/migration_v1.dart';

class SqliteMigrationsFactory {
  List<Migration> getCreateMigration() => [
        MigrationV1(),
      ];
  List<Migration> getUpgradeMigration(int version) => [];
}
