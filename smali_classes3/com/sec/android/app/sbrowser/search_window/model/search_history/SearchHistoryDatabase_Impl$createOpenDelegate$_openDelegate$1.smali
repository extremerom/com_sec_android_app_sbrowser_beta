.class public final Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl$createOpenDelegate$_openDelegate$1;
.super LJ2/Z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;->createOpenDelegate()LJ2/Z;
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
        "com/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl$createOpenDelegate$_openDelegate$1",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;

    const-string p1, "58716be1d2b2e8cd907ce956d00a2583"

    const-string v0, "91783d43a751e34b8a1b2f475d68c73d"

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, LJ2/Z;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAllTables(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `history` (`_ID` INTEGER PRIMARY KEY AUTOINCREMENT, `KEYWORD` TEXT NOT NULL, `DATETIME` TEXT NOT NULL)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_history_KEYWORD` ON `history` (`KEYWORD`)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'58716be1d2b2e8cd907ce956d00a2583\')"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    return-void
.end method

.method public dropAllTables(LS2/a;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `history`"

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;->access$internalInitInvalidationTracker(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;LS2/a;)V

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
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, LP2/p;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "_ID"

    const-string v4, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "_ID"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LP2/p;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v11, "KEYWORD"

    const-string v12, "TEXT"

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "KEYWORD"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LP2/p;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "DATETIME"

    const-string v6, "TEXT"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "DATETIME"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, LP2/r;

    invoke-static {v3}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "ASC"

    invoke-static {v6}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "index_history_KEYWORD"

    const/4 v8, 0x1

    invoke-direct {v5, v3, v7, v6, v8}, LP2/r;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, LP2/s;

    const-string v5, "history"

    invoke-direct {v3, v5, v1, v2, v4}, LP2/s;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v5, v0}, LG5/m;->d(Ljava/lang/String;LS2/a;)LP2/s;

    move-result-object v0

    invoke-virtual {v3, v0}, LP2/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LJ2/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "history(com.sec.android.app.sbrowser.search_window.model.search_history.SearchHistoryItem).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, LJ2/Y;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, LJ2/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, LJ2/Y;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
