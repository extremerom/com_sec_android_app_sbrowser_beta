.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider$SearchEngineDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchEngineDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "searchengine.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS searchengine(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,image BLOB,dominant INTEGER DEFAULT -1,type INTEGER DEFAULT 0,last_updated DATETIME DEFAULT NULL,icon_size INTEGER DEFAULT -1,image_url TEXT DEFAULT NULL,extra1 TEXT DEFAULT NULL,extra2 TEXT DEFAULT NULL,extra3 TEXT DEFAULT NULL);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p0, "onUpgrade, oldVersion : "

    const-string p1, "SearchEngineProvider"

    invoke-static {p2, p0, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
