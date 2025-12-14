.class Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SBrowserDatabaseErrorHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;-><init>()V

    return-void
.end method

.method private deleteDatabase()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "SBrowser.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "Browser.preferences_autobookmark"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "add_operator_bookmarks"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->b()Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->setDBCorrupt()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->b()Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    move-result-object p1

    const-string v0, "Database corrupted!"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->logExceptionCase(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;->deleteDatabase()V

    return-void
.end method
