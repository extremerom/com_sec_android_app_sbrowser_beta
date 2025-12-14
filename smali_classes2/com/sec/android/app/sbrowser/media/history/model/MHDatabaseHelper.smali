.class Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHDatabaseHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string v2, "media_history.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getReadableDatabase "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWritableDatabase "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "DatabaseHelper onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE if not exists MEDIAHISTORY(_ID INTEGER PRIMARY KEY autoincrement,PAGE_URL TEXT NOT NULL,VIDEO_URL TEXT NOT NULL,TITLE TEXT NOT NULL,THUMBNAIL TEXT,DEFAULT_THUMBNAIL TEXT,ICON TEXT,PRIVACY INTEGER NOT NULL,HAS_VIDEO INTEGER NOT NULL,POSITION INTEGER NOT NULL,DURATION INTEGER NOT NULL,VISIT_DATE DATETIME NOT NULL,HAS_CLOSED_CAPTION INTEGER NOT NULL,DIMENSION TEXT NOT NULL,EXTRA1 TEXT,EXTRA2 TEXT,EXTRA3 TEXT,EXTRA4 TEXT,EXTRA5 TEXT,EXTRA6 TEXT,EXTRA7 TEXT,EXTRA8 TEXT,EXTRA9 TEXT,EXTRA10 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "DatabaseHelper onDowngrade ["

    const-string v1, "->"

    const-string v2, "]"

    invoke-static {p2, p3, v0, v1, v2}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p3, :cond_0

    const-string p0, "DROP TABLE IF EXISTS MEDIAHISTORY"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE if not exists MEDIAHISTORY(_ID INTEGER PRIMARY KEY autoincrement,PAGE_URL TEXT NOT NULL,VIDEO_URL TEXT NOT NULL,TITLE TEXT NOT NULL,THUMBNAIL TEXT,DEFAULT_THUMBNAIL TEXT,ICON TEXT,PRIVACY INTEGER NOT NULL,HAS_VIDEO INTEGER NOT NULL,POSITION INTEGER NOT NULL,DURATION INTEGER NOT NULL,VISIT_DATE DATETIME NOT NULL,HAS_CLOSED_CAPTION INTEGER NOT NULL,DIMENSION TEXT NOT NULL,EXTRA1 TEXT,EXTRA2 TEXT,EXTRA3 TEXT,EXTRA4 TEXT,EXTRA5 TEXT,EXTRA6 TEXT,EXTRA7 TEXT,EXTRA8 TEXT,EXTRA9 TEXT,EXTRA10 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "DatabaseHelper onUpgrade ["

    const-string v1, "->"

    const-string v2, "]"

    invoke-static {p2, p3, v0, v1, v2}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p3, :cond_0

    const-string p0, "DROP TABLE IF EXISTS MEDIAHISTORY"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE if not exists MEDIAHISTORY(_ID INTEGER PRIMARY KEY autoincrement,PAGE_URL TEXT NOT NULL,VIDEO_URL TEXT NOT NULL,TITLE TEXT NOT NULL,THUMBNAIL TEXT,DEFAULT_THUMBNAIL TEXT,ICON TEXT,PRIVACY INTEGER NOT NULL,HAS_VIDEO INTEGER NOT NULL,POSITION INTEGER NOT NULL,DURATION INTEGER NOT NULL,VISIT_DATE DATETIME NOT NULL,HAS_CLOSED_CAPTION INTEGER NOT NULL,DIMENSION TEXT NOT NULL,EXTRA1 TEXT,EXTRA2 TEXT,EXTRA3 TEXT,EXTRA4 TEXT,EXTRA5 TEXT,EXTRA6 TEXT,EXTRA7 TEXT,EXTRA8 TEXT,EXTRA9 TEXT,EXTRA10 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
