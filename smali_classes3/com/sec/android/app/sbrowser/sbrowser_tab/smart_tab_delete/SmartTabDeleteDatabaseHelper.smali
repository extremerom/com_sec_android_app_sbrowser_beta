.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SmartTabDelete.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    return-object p0
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReadableDatabase "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SmartTabDeleteDatabaseHelper"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWritableDatabase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SmartTabDeleteDatabaseHelper"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS SMARTTABDELETE (AUTO_CLOSE_KEY TEXT PRIMARY KEY, TAB_ID INTEGER, TAB_URL TEXT, TAB_PAGE_TYPE TEXT DEFAULT NULL, TAB_LAUNCHED_TYPE TEXT DEFAULT NULL, TAB_CREATION_TIME INTEGER DEFAULT 0, TAB_LAST_ACTIVE_START_TIME INTEGER DEFAULT 0, TAB_REFRESH_COUNT INTEGER DEFAULT 0, CUMULATIVE_COUNT INTEGER DEFAULT 0, TAB_CLOSED_STATUS INTEGER DEFAULT 0, TAB_CLOSING_TIME INTEGER DEFAULT 0, TAB_CUMULATIVE_TIME INTEGER DEFAULT 0, USED_FOR_TRAINING INTEGER DEFAULT 0, PERIOD_ONE_COUNT INTEGER DEFAULT 0, PERIOD_TWO_COUNT INTEGER DEFAULT 0, PERIOD_THREE_COUNT INTEGER DEFAULT 0, PERIOD_ONE_TIME INTEGER DEFAULT 0, PERIOD_TWO_TIME INTEGER DEFAULT 0, PERIOD_THREE_TIME INTEGER DEFAULT 0, EXTRA_1 INTEGER DEFAULT 0, EXTRA_2 INTEGER DEFAULT 0, EXTRA_3 INTEGER DEFAULT 0, EXTRA_4 INTEGER DEFAULT 0, EXTRA_5 INTEGER DEFAULT 0, EXTRA_6 TEXT DEFAULT NULL, EXTRA_7 TEXT DEFAULT NULL, EXTRA_8 TEXT DEFAULT NULL, EXTRA_9 TEXT DEFAULT NULL, EXTRA_10 TEXT DEFAULT NULL );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS SMARTTABDELETEPREDICTEDTABSTATE (AUTO_CLOSE_KEY TEXT, TAB_ID INTEGER, TAB_URL TEXT, TAB_PAGE_TYPE TEXT DEFAULT NULL, TAB_LAUNCHED_TYPE TEXT DEFAULT NULL, TAB_CREATION_TIME INTEGER DEFAULT 0, TAB_LAST_ACTIVE_START_TIME INTEGER DEFAULT 0, TAB_REFRESH_COUNT INTEGER DEFAULT 0, CUMULATIVE_COUNT INTEGER DEFAULT 0, TAB_CLOSED_STATUS INTEGER DEFAULT 0, TAB_CLOSING_TIME INTEGER DEFAULT 0, TAB_CUMULATIVE_TIME INTEGER DEFAULT 0, USED_FOR_TRAINING INTEGER DEFAULT 0, PERIOD_ONE_COUNT INTEGER DEFAULT 0, PERIOD_TWO_COUNT INTEGER DEFAULT 0, PERIOD_THREE_COUNT INTEGER DEFAULT 0, PERIOD_ONE_TIME INTEGER DEFAULT 0, PERIOD_TWO_TIME INTEGER DEFAULT 0, PERIOD_THREE_TIME INTEGER DEFAULT 0, EXTRA_1 INTEGER DEFAULT 0, EXTRA_2 INTEGER DEFAULT 0, EXTRA_3 INTEGER DEFAULT 0, EXTRA_4 INTEGER DEFAULT 0, EXTRA_5 INTEGER DEFAULT 0, EXTRA_6 TEXT DEFAULT NULL, EXTRA_7 TEXT DEFAULT NULL, EXTRA_8 TEXT DEFAULT NULL, EXTRA_9 TEXT DEFAULT NULL, EXTRA_10 TEXT DEFAULT NULL );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
