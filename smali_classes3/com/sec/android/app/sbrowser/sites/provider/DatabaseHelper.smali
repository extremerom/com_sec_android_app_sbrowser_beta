.class public Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;
    }
.end annotation


# static fields
.field private static sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

.field private static sErrorHandler:Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;


# instance fields
.field private mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

.field private mContext:Landroid/content/Context;

.field private mSavedPageProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sErrorHandler:Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xd

    const-string v2, "SBrowser.db"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mSavedPageProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method private addGroupColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p0, "DatabaseHelper"

    :try_start_0
    const-string v0, " Insert group info "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALTER TABLE TABS ADD COLUMN TAB_GROUP_NAME TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE TABS ADD COLUMN TAB_GROUP_COLOR INTEGER DEFAULT \'0\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " addColumnInTable error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic b()Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    return-object p0
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sErrorHandler:Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper$SBrowserDatabaseErrorHandler;)V

    return-object v0
.end method


# virtual methods
.method public createBookmarkParentFolders(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->createParentFolders(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

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

    const-string v1, "DatabaseHelper"

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

    const-string v1, "DatabaseHelper"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS BOOKMARKS (_ID INTEGER PRIMARY KEY AUTOINCREMENT, BOOKMARK_ID INTEGER DEFAULT 0 NOT NULL,URL TEXT, SURL TEXT, TITLE TEXT, FAVICON BLOB,FOLDER INTEGER DEFAULT 0 NOT NULL,PARENT INTEGER DEFAULT 0 NOT NULL, INSERT_AFTER INTEGER DEFAULT 0 NOT NULL, POSITION INTEGER DEFAULT 0 NOT NULL,CHILDREN_COUNT INTEGER DEFAULT 0 NOT NULL,TAGS TEXT,SOURCEID TEXT,DELETED INTEGER DEFAULT 0 NOT NULL,CREATED INTEGER DEFAULT 0 NOT NULL,MODIFIED INTEGER DEFAULT 0 NOT NULL,DIRTY INTEGER DEFAULT 0 NOT NULL,ACCOUNT_NAME TEXT,ACCOUNT_TYPE TEXT,DEVICE_ID TEXT, DEVICE_NAME TEXT,SYNC1 TEXT,SYNC2 TEXT,SYNC3 TEXT,SYNC4 TEXT,SYNC5 TEXT,IS_COMMITED INTEGER DEFAULT 0 NOT NULL,bookmark INTEGER DEFAULT 1 NOT NULL,bookmark_type INTEGER DEFAULT 0 NOT NULL,EDITABLE INTEGER DEFAULT 1 NOT NULL,type INTEGER NOT NULL DEFAULT 1,keyword TEXT,description TEXT,guid TEXT,TOUCH_ICON BLOB,DOMINANT_COLOR INTEGER DEFAULT 0 NOT NULL,EXPAND INTEGER DEFAULT 0 NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS READINGLIST(_id INTEGER PRIMARY KEY AUTOINCREMENT,path TEXT NOT NULL,dir_path TEXT NOT NULL,title TEXT NOT NULL,description TEXT NOT NULL,favicon BLOB,url TEXT NOT NULL,account_name TEXT,account_type TEXT,device_id TEXT,device_name TEXT,created INTEGER DEFAULT 0,modified INTEGER DEFAULT 0,is_deleted INTEGER DEFAULT 0,is_dirty INTEGER DEFAULT 0,image_style INTEGER DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,isNightMode INTEGER DEFAULT 0,isReadingItem INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS TABS (_ID INTEGER PRIMARY KEY AUTOINCREMENT, TAB_ID INTEGER, TAB_INDEX INTEGER, TAB_URL TEXT,TAB_TITLE TEXT,TAB_GROUP_NAME TEXT,TAB_GROUP_COLOR INTEGER,TAB_FAV_ICON BLOB,TAB_ACTIVATE INTEGER,IS_DELETED INTEGER DEFAULT 0,IS_INCOGNITO INTEGER DEFAULT 0,ACCOUNT_NAME TEXT, ACCOUNT_TYPE TEXT,DATE_CREATED INTEGER,DATE_MODIFIED INTEGER,DIRTY INTEGER DEFAULT 0,SYNC1 TEXT,SYNC2 TEXT,SYNC3 TEXT,SYNC4 TEXT,SYNC5 TEXT,DEVICE_NAME TEXT, DEVICE_ID TEXT,DEVICE_TYPE TEXT,TAB_USAGE TEXT DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS SYNC_STATE (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT, account_type TEXT, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->init(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->setDBReset()V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p0, "onDowngrade oldVersion: "

    const-string p1, " newVersion: "

    const-string v0, " downgrade not supported."

    invoke-static {p2, p3, p0, p1, v0}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "PRAGMA recursive_triggers = true"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const-string v0, "onUpgrade error : "

    const-string v1, " addColumnInTable error : "

    const-string v2, "onUpgrade - oldVersion = "

    const-string v3, " newVersion = "

    const-string v4, "DatabaseHelper"

    invoke-static {p2, p3, v2, v3, v4}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {v2, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->setDBUpgrade(II)V

    :try_start_0
    sget-object p3, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->startDBCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->updateAccountFolderPosition(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p3, 0x6

    const/4 v2, 0x5

    if-eq p2, p3, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v2, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mSavedPageProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_0
    if-ne p2, v2, :cond_2

    :try_start_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mSavedPageProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;->handleUpgradeReadingListImageStyle(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catch_1
    move-exception p3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mSavedPageProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/provider/SavedPageProviderManager;->handleUpgradeSavepageFileCopy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->logExceptionCase(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p3, 0x7

    if-ge p2, p3, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "do_not_show_incognito_popup_state"

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/16 p3, 0x9

    if-gt p2, p3, :cond_5

    :try_start_3
    const-string p3, "ALTER TABLE TABS ADD COLUMN DEVICE_TYPE TEXT;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p3

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->updateDeskTopFolderPosition(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const/16 p3, 0xa

    if-gt p2, p3, :cond_6

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->mBookmarkProviderManager:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkProviderManager;->removeDeskTopFolder(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    const/16 p3, 0xc

    if-gt p2, p3, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->addGroupColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShouldMigrateTabGroup(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_5
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->endDBCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7

    :goto_6
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->logExceptionCase(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_7
    return-void

    :goto_8
    sget-object p2, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->sDataIntegrityChecker:Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/DataIntegrityChecker;->endDBCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p0
.end method
