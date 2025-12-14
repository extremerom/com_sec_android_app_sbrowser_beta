.class Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider$MostVisitedSitesDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MostVisitedSitesDbHelper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "most_visited_sites.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider$MostVisitedSitesDbHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS most_visited_sites(_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, url TEXT UNIQUE, touchiconUrl TEXT, touchicon BLOB, dominant INTEGER DEFAULT -1, score FLOAT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string p0, "onUpgrade : "

    const-string v0, "->"

    const-string v1, "MostVisitedSitesProvider"

    invoke-static {p2, p3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const-string p0, "ALTER TABLE most_visited_sites ADD COLUMN touchiconUrl TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x2

    if-gt p2, p0, :cond_1

    const-string p0, "ALTER TABLE most_visited_sites RENAME TO most_visited_sites_old"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS most_visited_sites(_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, url TEXT UNIQUE, touchiconUrl TEXT, touchicon BLOB, dominant INTEGER DEFAULT -1, score FLOAT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO most_visited_sites (_id , title , url , touchiconUrl , touchicon , dominant , score) SELECT _id , title , url , touchiconUrl , touchicon , dominant , score FROM most_visited_sites_old"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE most_visited_sites_old;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
