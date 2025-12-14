.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1;
.super LJ2/Z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->createOpenDelegate()LJ2/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "com/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1",
        "LJ2/Z;",
        "LS2/a;",
        "connection",
        "Ldb/r;",
        "createAllTables",
        "(LS2/a;)V",
        "dropAllTables",
        "onCreate",
        "onOpen",
        "onPreMigrate",
        "onPostMigrate",
        "LJ2/Y;",
        "onValidateSchema",
        "(LS2/a;)LJ2/Y;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;

    const-string p1, "4055472b7b80a7b9bbe951ff5e5e4131"

    const-string v0, "16f6d9f54198530b7b03747a12dab482"

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, LJ2/Z;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAllTables(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `si_log_entity` (`sv` INTEGER NOT NULL, `ev` INTEGER NOT NULL, `et` INTEGER NOT NULL, `raw` TEXT NOT NULL, `ed` TEXT, `extra` TEXT, `date` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_date` ON `si_log_entity` (`date`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_sv` ON `si_log_entity` (`sv`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_ev` ON `si_log_entity` (`ev`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_et` ON `si_log_entity` (`et`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_sv_et` ON `si_log_entity` (`sv` ASC, `et` DESC)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_si_log_entity_ev_et` ON `si_log_entity` (`ev` ASC, `et` DESC)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `si_status_log` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sv` INTEGER NOT NULL, `ev` INTEGER NOT NULL, `ui` TEXT, `ed` TEXT, `extraParameter` TEXT)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_si_status_log_sv_ev` ON `si_status_log` (`sv`, `ev`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4055472b7b80a7b9bbe951ff5e5e4131\')"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    return-void
.end method

.method public dropAllTables(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `si_log_entity`"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "DROP TABLE IF EXISTS `si_status_log`"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    return-void
.end method

.method public onCreate(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(LS2/a;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->access$internalInitInvalidationTracker(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;LS2/a;)V

    return-void
.end method

.method public onPostMigrate(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreMigrate(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LA/b;->b(LS2/a;)V

    return-void
.end method

.method public onValidateSchema(LS2/a;)LJ2/Y;
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, LP2/p;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "sv"

    const-string v4, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "sv"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v11, "ev"

    const-string v12, "INTEGER"

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "ev"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v9, 0x0

    const-string v6, "et"

    const-string v7, "INTEGER"

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "et"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v7, "raw"

    const-string v8, "TEXT"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "raw"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v11, 0x0

    const-string v8, "ed"

    const-string v9, "TEXT"

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "ed"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const-string v8, "extra"

    const-string v9, "TEXT"

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "extra"

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v9, "date"

    const-string v10, "INTEGER"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "date"

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/4 v12, 0x1

    const-string v9, "id"

    const-string v10, "INTEGER"

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "id"

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v10, LP2/r;

    invoke-static {v7}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v11, "ASC"

    invoke-static {v11}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "index_si_log_entity_date"

    const/4 v14, 0x0

    invoke-direct {v10, v7, v13, v12, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, LP2/r;

    invoke-static {v2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v11}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "index_si_log_entity_sv"

    invoke-direct {v7, v10, v13, v12, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, LP2/r;

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v11}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "index_si_log_entity_ev"

    invoke-direct {v7, v10, v13, v12, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, LP2/r;

    invoke-static {v5}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v11}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "index_si_log_entity_et"

    invoke-direct {v7, v10, v13, v12, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, LP2/r;

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "DESC"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v15, "index_si_log_entity_sv_et"

    invoke-direct {v7, v10, v15, v13, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, LP2/r;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "index_si_log_entity_ev_et"

    invoke-direct {v7, v5, v12, v10, v14}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, LP2/s;

    const-string v7, "si_log_entity"

    invoke-direct {v5, v7, v1, v3, v9}, LP2/s;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v7, v0}, LG5/m;->d(Ljava/lang/String;LS2/a;)LP2/s;

    move-result-object v1

    invoke-virtual {v5, v1}, LP2/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "\n Found:\n"

    if-nez v3, :cond_0

    new-instance v0, LJ2/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "si_log_entity(com.sec.android.app.sbrowser.si_log.model.db.SILogEntity).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, LJ2/Y;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, LP2/p;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const-string v16, "id"

    const-string v17, "INTEGER"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-string v23, "sv"

    const-string v24, "INTEGER"

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/16 v19, 0x0

    const-string v16, "ev"

    const-string v17, "INTEGER"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/16 v25, 0x0

    const-string v23, "ui"

    const-string v24, "TEXT"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ui"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const/16 v18, 0x0

    const-string v16, "ed"

    const-string v17, "TEXT"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP2/p;

    const-string v23, "extraParameter"

    const-string v24, "TEXT"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "extraParameter"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, LP2/r;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {v11, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v8, "index_si_status_log_sv_ev"

    const/4 v9, 0x1

    invoke-direct {v6, v2, v8, v4, v9}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, LP2/s;

    const-string v4, "si_status_log"

    invoke-direct {v2, v4, v1, v3, v5}, LP2/s;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v4, v0}, LG5/m;->d(Ljava/lang/String;LS2/a;)LP2/s;

    move-result-object v0

    invoke-virtual {v2, v0}, LP2/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, LJ2/Y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "si_status_log(com.sec.android.app.sbrowser.si_log.model.db.SIStatusLogEntity).\n Expected:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, LJ2/Y;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, LJ2/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, LJ2/Y;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
