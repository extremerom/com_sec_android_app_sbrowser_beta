.class Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbHelper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SyncMetaInfo.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/model/SyncMetaInfoDbHelper$DbHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "creating db"

    const-string v0, "[HistorySync]SyncMetaInfoDbHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p0, "CREATE TABLE IF NOT EXISTS HISTORY (_ID INTEGER PRIMARY KEY AUTOINCREMENT, URL LONGVARCHAR,TITLE LONGVARCHAR,VISIT_COUNT INTEGER,VISIT_TIME TEXT,ACCOUNT_NAME TEXT, ACCOUNT_TYPE TEXT,DIRTY INTEGER DEFAULT 0 NOT NULL,DELETED INTEGER DEFAULT 0 NOT NULL,SYNC1 TEXT,SYNC2 TEXT,SYNC3 TEXT,SYNC4 TEXT,SYNC5 TEXT,DEVICE_NAME TEXT, DEVICE_ID TEXT,DEVICE_TYPE TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p0, "onDowngrade:"

    const-string p1, "->"

    const-string v0, "[HistorySync]SyncMetaInfoDbHelper"

    invoke-static {p2, p3, p0, p1, v0}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p0, "onUpgrade:"

    const-string p1, "->"

    const-string v0, "[HistorySync]SyncMetaInfoDbHelper"

    invoke-static {p2, p3, p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
