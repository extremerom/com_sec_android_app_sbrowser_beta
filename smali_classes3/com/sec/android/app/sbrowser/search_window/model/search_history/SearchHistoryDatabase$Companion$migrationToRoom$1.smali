.class public final Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion$migrationToRoom$1;
.super LN2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion$migrationToRoom$1",
        "LN2/a;",
        "LT2/a;",
        "database",
        "Ldb/r;",
        "migrate",
        "(LT2/a;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LN2/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(LT2/a;)V
    .locals 0

    const-string p0, "database"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS history_new (_ID INTEGER PRIMARY KEY AUTOINCREMENT, KEYWORD TEXT NOT NULL, DATETIME TEXT NOT NULL, UNIQUE (KEYWORD))"

    invoke-interface {p1, p0}, LT2/a;->s(Ljava/lang/String;)V

    const-string p0, "INSERT INTO history_new (KEYWORD, DATETIME)  SELECT KEYWORD, DATETIME FROM history"

    invoke-interface {p1, p0}, LT2/a;->s(Ljava/lang/String;)V

    const-string p0, "DROP TABLE history"

    invoke-interface {p1, p0}, LT2/a;->s(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE history_new RENAME TO history"

    invoke-interface {p1, p0}, LT2/a;->s(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX index_history_KEYWORD ON history (KEYWORD)"

    invoke-interface {p1, p0}, LT2/a;->s(Ljava/lang/String;)V

    return-void
.end method
