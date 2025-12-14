.class Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x12

    const-string v2, "pintab.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private fillValuesForSync(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    const/4 p0, 0x0

    const-string v0, "pintab"

    const/16 v1, 0x10

    if-ge p2, v1, :cond_0

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->insertAccountFieldsOnCreate(Landroid/content/ContentValues;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->insertSyncFieldsOnUpdate(Landroid/content/ContentValues;)V

    const-string v1, "TYPE= 0"

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->insertAccountFieldsOnCreate(Landroid/content/ContentValues;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->insertSyncFieldsOnUpdate(Landroid/content/ContentValues;)V

    const-string v1, "TYPE= 0 AND deleted = 0 AND accountName IS NULL"

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private migrateQuickAccessTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "CREATE TEMPORARY TABLE pinned_backup(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,position INTEGER,touchicon BLOB,touchiconUrl TEXT,dominant INTEGER DEFAULT -1,TYPE INTEGER DEFAULT 2,itemId INTEGER DEFAULT -1,titleState INTEGER DEFAULT 0 NOT NULL,dirty INTEGER DEFAULT 0 NOT NULL,deleted INTEGER DEFAULT 0 NOT NULL,accountName TEXT,accountType TEXT,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "INSERT INTO pinned_backup ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") SELECT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM pintab;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE pintab;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS pintab(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,position INTEGER,touchicon BLOB,touchiconUrl TEXT,dominant INTEGER DEFAULT -1,TYPE INTEGER DEFAULT 2,itemId INTEGER DEFAULT -1,titleState INTEGER DEFAULT 0 NOT NULL,dirty INTEGER DEFAULT 0 NOT NULL,deleted INTEGER DEFAULT 0 NOT NULL,accountName TEXT,accountType TEXT,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO pintab ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM pinned_backup;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE pinned_backup;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private restructureQuickAccessTableIfNeeded(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    if-lt p2, v0, :cond_4

    const/16 p0, 0xd

    if-ge p2, p0, :cond_0

    const-string p0, "ALTER TABLE pintab ADD COLUMN itemId INTEGER DEFAULT -1;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0xf

    if-ge p2, p0, :cond_1

    const-string p0, "ALTER TABLE pintab ADD COLUMN touchiconUrl TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 p0, 0x10

    if-ge p2, p0, :cond_2

    const-string p0, "ALTER TABLE pintab ADD COLUMN dirty INTEGER DEFAULT 0 NOT NULL;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN deleted INTEGER DEFAULT 0 NOT NULL;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN accountName TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN accountType TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN sync1 TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN sync2 TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN sync3 TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN sync4 TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE pintab ADD COLUMN sync5 TEXT;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 p0, 0x12

    if-ge p2, p0, :cond_3

    const-string p0, "ALTER TABLE pintab ADD COLUMN titleState INTEGER DEFAULT 2 NOT NULL;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string p2, "ALTER TABLE pintab ADD COLUMN TYPE INTEGER DEFAULT 0;"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "_id , title , url , position , touchicon , dominant , TYPE"

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;->migrateQuickAccessTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS pintab(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,position INTEGER,touchicon BLOB,touchiconUrl TEXT,dominant INTEGER DEFAULT -1,TYPE INTEGER DEFAULT 2,itemId INTEGER DEFAULT -1,titleState INTEGER DEFAULT 0 NOT NULL,dirty INTEGER DEFAULT 0 NOT NULL,deleted INTEGER DEFAULT 0 NOT NULL,accountName TEXT,accountType TEXT,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "onDowngrade, oldVersion : "

    const-string v1, ", newVersion : "

    const-string v2, "QuickAccessDbHelper"

    invoke-static {p2, p3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_id , title , url , position , touchicon , touchiconUrl , dominant , TYPE , itemId , titleState , dirty , deleted , accountName , accountType , sync1 , sync2 , sync3 , sync4 , sync5"

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;->migrateQuickAccessTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p3, "onUpgrade, oldVersion : "

    const-string v0, "QuickAccessDbHelper"

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;->restructureQuickAccessTableIfNeeded(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/16 p3, 0xc

    if-ge p2, p3, :cond_0

    const-string p3, "DROP TABLE IF EXISTS card_config;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS cp_table;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS cp_contents_table;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;->fillValuesForSync(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/4 p0, 0x3

    if-ge p2, p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDefaultItemsEdited(Z)V

    :cond_1
    return-void
.end method
