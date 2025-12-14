.class public Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;
.super Lcom/sec/terrace/TerraceBrowserProvider;
.source "SourceFile"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBookmarkDBOperations:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

.field private mSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/TerraceBrowserProvider;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private assignAccountValuesFromURI(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    const-string v0, "ACCOUNT_TYPE"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method private getParcelFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "SBrowserProvider"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->getSavedPageDirPathForSync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "created directory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string p0, "Unable to create directory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "w"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "Error unable to open file "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_1
    const/high16 p0, 0x38000000

    invoke-static {v2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to open file :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-object v3
.end method

.method private initSyncObservers()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isSamsungSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SBrowserProvider"

    const-string v1, "initSyncObservers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->getInstance()Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mSyncDelegate:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->initSyncObservers()V

    return-void
.end method

.method private insertBookmarksInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;Z)J
    .locals 2

    const-string p0, "SBrowserProvider"

    const-string v0, "insert into bookmark table"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "URL"

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "url"

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, p0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SURL"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p3, "ACCOUNT_NAME"

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p3, "ACCOUNT_TYPE"

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "bookmark_type"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string p3, "BOOKMARKS"

    invoke-virtual {p2, p3, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private insertSavedpageInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "path"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "is_dirty"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p0, "READINGLIST"

    const-string v0, "title"

    invoke-virtual {p2, p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private insertTabsInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;Z)J
    .locals 1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p3, "ACCOUNT_TYPE"

    invoke-virtual {p1, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "TABS"

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static declared-synchronized matchUri(Landroid/net/Uri;)I
    .locals 5

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "bookmarks"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "bookmarks/#"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "bookmarks"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "bookmarks/#"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "magazine"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "thumbnail"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "readinglist"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "readinglist/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "readinglist/*"

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "tabs"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "tabs/#"

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.migration"

    const-string v3, "bookmarks"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "syncstate"

    const/16 v4, 0x15

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const-string v3, "syncstate/#"

    const/16 v4, 0x16

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.operatorbookmarks"

    const-string v3, "bookmarks"

    const/16 v4, 0x19

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.operatorbookmarks"

    const-string v3, "bookmarks/chameleon"

    const/16 v4, 0x1b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "history"

    const/16 v4, 0x17

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "history/#"

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.ChromeBrowserProvider"

    const-string v3, "search_suggest_regex_query"

    const/16 v4, 0x1a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    const-string v3, "surfinginternet"

    const/16 v4, 0x1c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private sendMessageForRefresh()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_THIRD_PARTY_IMPORTED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private updateBookmarkInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const-string v2, "bookmark_type"

    const-string v3, "EDITABLE"

    const-string v4, "_ID"

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, " AND ACCOUNT_NAME == \'"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' AND ACCOUNT_TYPE == \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    const-string v6, "\'"

    invoke-static {v5, v0, v6}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    move-object v13, v6

    :goto_0
    if-eqz p5, :cond_4

    :try_start_0
    const-string v6, "BOOKMARKS"

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p4

    move-object v8, v13

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v0, :cond_2

    move-object/from16 v6, p3

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    if-eq v8, v0, :cond_1

    const-string v0, "_ID != ?"

    invoke-static {v13, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v6, p3

    goto :goto_2

    :goto_3
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    move-object/from16 v6, p3

    :cond_3
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v6, p3

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in update Bookmark third party apps "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SBrowserSync"

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    move-object/from16 v6, p3

    :cond_5
    :goto_6
    const-string v0, "URL"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_6
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "SURL"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p5, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "TOUCH_ICON"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_a
    const-string v0, "BOOKMARKS"

    move-object/from16 v2, p4

    invoke-virtual {v2, v0, p1, v13, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->setBookmarkBarId(J)V

    return v0
.end method

.method private updateBookmarkThirdPartyApps(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6

    const-string v0, "Handling third party update request !!!"

    const-string v1, "SBrowserProvider:SBrowserSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p5, "Handling third party update request !!! : sending to sbrChromeBrowserProvider"

    invoke-static {v1, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceBrowserProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v3, p3

    move-object v4, p4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->updateThirdPartyBookmarksInDB(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    return p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/content/ContentProviderResult;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_5

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x1f4

    if-ge v5, v7, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentProviderOperation;

    if-lez v4, :cond_3

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/16 v8, 0xfa0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    move v5, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v7, p0, v2, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/OperationApplicationException;

    const-string v1, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {p1, v1, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    return-object v2

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    throw p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "isEnabledItemWifiOnly"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->checkWifiSyncSetting(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "isBackupEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->checkBackupEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "getAntiTrackingStats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil;->getAntiTrackingStats(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const-string v0, "Error while deleting uri: "

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "SBrowserProvider"

    const-string v4, "===delete==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceBrowserProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceDelete;

    invoke-direct {v4, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceDelete;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->start(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.sbrowser.beta.browser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "Handling third party bookmark delete request !!!"

    const-string v2, "SBrowserProvider:SBrowserSync"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const-string v0, "Handling third party bookmark delete request !!! : Redirecting to SbrchromeBrowserProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceBrowserProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p3

    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, v1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->deleteThirdPartyBookmarksInDB(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    return p0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->applyingBatch()Z

    move-result v4

    const-string v5, "SBrowserSync"

    if-nez v4, :cond_8

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " exeception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    throw p0

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_9
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_b

    if-lez v2, :cond_a

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->inCreaseDownSyncCount(I)V

    :cond_a
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateCurrentSyncStatus(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_b
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->getSyncLocalChanges(Landroid/net/Uri;)Z

    move-result p3

    if-lez v2, :cond_d

    const-string v0, "readinglist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "bookmarks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    if-nez p2, :cond_d

    if-nez p3, :cond_d

    const-string p2, "Calling notifyChange from delete()"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_d
    return v2
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "DELETED"

    const-string v5, "DIRTY"

    const-string v6, "bookmark_type"

    const-string v7, "EDITABLE"

    const-string v8, "_ID"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/16 v18, 0x0

    if-nez v9, :cond_0

    return v18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->getSyncLocalChanges(Landroid/net/Uri;)Z

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v13

    const-string v15, "SBrowserProvider"

    const/4 v14, 0x1

    if-eqz v13, :cond_c

    if-eq v13, v14, :cond_b

    const/4 v4, 0x7

    if-eq v13, v4, :cond_7

    const/16 v4, 0x8

    if-eq v13, v4, :cond_6

    const/16 v4, 0xb

    if-eq v13, v4, :cond_5

    const/16 v4, 0xc

    if-eq v13, v4, :cond_4

    const/16 v4, 0x15

    if-eq v13, v4, :cond_3

    const/16 v4, 0x16

    if-eq v13, v4, :cond_2

    const/16 v1, 0x19

    if-eq v13, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mBookmarkDBOperations:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;->removeOperatorBookmarks(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_c

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    move-object v1, v3

    :goto_0
    const-string v2, "SYNC_STATE"

    invoke-virtual {v9, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_c

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    move-object v1, v3

    :goto_1
    const-string v2, "TABS"

    invoke-virtual {v9, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_c

    :cond_6
    const-string v4, "READINGLIST._id=?"

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "READINGLIST"

    if-eqz v4, :cond_a

    if-nez v12, :cond_9

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "is_deleted"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "is_dirty"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "modified"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "sync5"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_2
    move/from16 v18, v0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {v9, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_a
    invoke-virtual {v9, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    const-string v1, "delete of "

    const-string v2, " failed exception: "

    invoke-static {v1, v10, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    goto :goto_5

    :cond_c
    move-object v1, v3

    :goto_5
    if-eqz v11, :cond_10

    :try_start_2
    const-string v11, "BOOKMARKS"

    filled-new-array {v8, v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v0, 0x0

    move-object v10, v9

    move-object v13, v2

    move v3, v14

    move-object v14, v1

    move-object/from16 v19, v15

    move-object v15, v0

    :try_start_3
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v10, :cond_f

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    :cond_d
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-nez v0, :cond_e

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    if-eq v12, v0, :cond_e

    const-string v0, "_ID != ?"

    invoke-static {v2, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :cond_e
    :goto_7
    if-ne v13, v3, :cond_d

    if-ne v14, v3, :cond_d

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :goto_8
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v3

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_f
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v19, v15

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception in delete bookmark"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v19

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_10
    :goto_b
    const-string v0, "BOOKMARKS"

    invoke-virtual {v9, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sub-int v18, v0, v18

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->setBookmarkBarId(J)V

    :cond_11
    :goto_c
    return v18
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string p0, "multipart/related"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported URI: "

    invoke-static {v0, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.item/bookmark"

    return-object p0

    :cond_2
    const-string p0, "vnd.android.cursor.dir/bookmark"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Error while performing insert : "

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "SBrowserProvider"

    const-string v4, "===insert==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->assignAccountValuesFromURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v2

    const/16 v4, 0x17

    if-ne v2, v4, :cond_2

    invoke-super {p0, p1, p2}, Lcom/sec/terrace/TerraceBrowserProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceInsert;

    invoke-direct {v4, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceInsert;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->start(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V

    :cond_3
    const-string v2, "com.sec.android.app.sbrowser.beta.browser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.sec.android.app.sbrowser.beta.migration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->applyingBatch()Z

    move-result v4

    const-wide/16 v5, 0x0

    const-string v7, "SBrowserSync"

    if-nez v4, :cond_7

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    move-wide v8, v5

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    throw p0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v8

    :cond_8
    :goto_1
    invoke-static {p1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz v2, :cond_9

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->inCreaseDownSyncCount(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateCurrentSyncStatus(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_9
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->getSyncLocalChanges(Landroid/net/Uri;)Z

    move-result p1

    cmp-long v1, v8, v5

    if-lez v1, :cond_b

    const-string v1, "readinglist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    if-nez v2, :cond_b

    if-nez p1, :cond_b

    const-string p1, "Calling notifyChange from insert()"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_b
    return-object p2

    :cond_c
    :goto_2
    const-string v0, "Handling third party bookmark request !!!"

    const-string v2, "SBrowserProvider:SBrowserSync"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, v1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->insertThirdPartyBookmarkData(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_e

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->insertThirdPartyBookmarkData(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->sendMessageForRefresh()V

    return-object p1

    :cond_e
    const-string v0, "All third party request should be sent to sbrChromeBrowserProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/terrace/TerraceBrowserProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x7

    if-eq p1, v4, :cond_5

    const/16 v4, 0xb

    if-eq p1, v4, :cond_4

    const/16 v3, 0x15

    if-eq p1, v3, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mBookmarkDBOperations:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

    if-eqz p0, :cond_7

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;->addOperatorBookmarks(Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mBookmarkDBOperations:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

    if-eqz p0, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;->addOperatorBookmarks(Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-string p0, "SYNC_STATE"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, v0, v3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->insertTabsInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;Z)J

    move-result-wide v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->insertSavedpageInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2, v0, v3}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->insertBookmarksInTransaction(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;Z)J

    move-result-wide v1

    :cond_7
    :goto_0
    return-wide v1
.end method

.method public onCreate()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/SBrowserApplication;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Getting Wrong context = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SBrowserProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->initialize()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->setApplicationContext(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->onCreate()Z

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mBookmarkDBOperations:Lcom/sec/android/app/sbrowser/sites/provider/BookmarkDBOperations;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->initSyncObservers()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSyncInternalizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->disableSyncClientProvider(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;->controlAuthenticator(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->isTurnOn()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->initialize()V

    :cond_4
    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getParcelFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/16 v16, 0x0

    if-nez v10, :cond_0

    return-object v16

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->activate(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===query=== "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "SBrowserProvider"

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v16

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v14, p5

    invoke-static {v8, v9, v14, v7, v0}, Lcom/sec/android/app/sbrowser/sites/provider/BookmarkHistorySuggestions;->getBookmarkHistorySuggestionsFinDo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_3
    move-object/from16 v14, p5

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceQuery;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceQuery;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->start(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V

    :cond_4
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->assignAccountValuesFromURI(Landroid/net/Uri;)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "BOOKMARKS"

    if-eq v2, v3, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    :cond_5
    move-object v2, v15

    goto/16 :goto_8

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v2

    const-string v3, "\'"

    const-string v5, "\' AND ACCOUNT_TYPE == \'"

    const-string v6, " AND ACCOUNT_NAME == \'"

    if-eqz v2, :cond_f

    const/4 v11, 0x1

    if-eq v2, v11, :cond_e

    const/4 v4, 0x7

    const-string v12, "READINGLIST"

    if-eq v2, v4, :cond_d

    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    const/16 v4, 0xb

    if-eq v2, v4, :cond_a

    const/16 v4, 0x15

    if-eq v2, v4, :cond_8

    const/16 v4, 0x16

    if-ne v2, v4, :cond_7

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v7}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown URI "

    invoke-static {v1, v7}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v2, v8

    move-object v4, v9

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz v8, :cond_9

    invoke-static {v2, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string v3, "SYNC_STATE"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v11, v2

    move-object v12, v4

    goto/16 :goto_5

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {v8, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_b
    move-object v2, v8

    :goto_1
    const-string v3, "TABS"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v11, v2

    :goto_2
    move-object v12, v9

    goto :goto_5

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_3
    move-object v11, v8

    goto :goto_2

    :cond_e
    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v7}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_f
    move-object v2, v8

    move-object v8, v9

    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz v9, :cond_10

    invoke-static {v2, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v11, v2

    move-object v12, v8

    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateCurrentSyncStatus(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_11
    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object v8, v1

    move-object v9, v10

    move-object/from16 v10, p2

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v15, p5

    :try_start_0
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    move-object/from16 v1, v16

    goto :goto_7

    :catchall_0
    const-string v1, "Query failed!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    :cond_12
    return-object v1

    :goto_8
    const-string v0, " Sync Handling third party bookmark query request"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DELETED != 1"

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, "MODIFIED"

    const-string v18, "TOUCH_ICON"

    const-string v11, "_ID"

    const-string v12, "URL"

    const-string v13, "TITLE"

    const-string v14, "FAVICON"

    const-string v15, "CREATED"

    const-string v16, "bookmark_type"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "limit"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v10

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_9
    invoke-super/range {p0 .. p5}, Lcom/sec/terrace/TerraceBrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13

    move-object v1, p0

    move-object v8, p1

    move-object v3, p2

    const-string v2, "Error while performing update of uri: "

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v4, 0x0

    if-nez v6, :cond_0

    return v4

    :cond_0
    const-string v0, "SBrowserProvider"

    const-string v5, "===update==="

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->checkAllowedSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/16 v5, 0x17

    if-ne v0, v5, :cond_2

    invoke-super/range {p0 .. p4}, Lcom/sec/terrace/TerraceBrowserProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceUpdate;

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct {v5, p1, p2, v7, v9}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceUpdate;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->start(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V

    goto :goto_0

    :cond_3
    move-object/from16 v7, p3

    move-object/from16 v9, p4

    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->assignAccountValuesFromURI(Landroid/net/Uri;)V

    const-string v0, "com.sec.android.app.sbrowser.beta.browser"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->updateBookmarkThirdPartyApps(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->applyingBatch()Z

    move-result v0

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v12, "ACCOUNT_NAME"

    invoke-virtual {p2, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, v1, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz v5, :cond_6

    const-string v12, "ACCOUNT_TYPE"

    invoke-virtual {p2, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v12, "SBrowserSync"

    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual/range {p0 .. p4}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " exception: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move v0, v4

    goto :goto_4

    :goto_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    throw v0

    :cond_9
    invoke-virtual/range {p0 .. p4}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->end([Ljava/lang/Object;)V

    if-eqz v11, :cond_a

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v10

    move v6, v0

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->updateSyncStatus(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    :cond_a
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->getSyncLocalChanges(Landroid/net/Uri;)Z

    move-result v2

    if-lez v0, :cond_d

    const-string v3, "readinglist"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "bookmarks"

    if-nez v3, :cond_b

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    if-nez v11, :cond_d

    if-nez v2, :cond_d

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "Calling notifyChange from update()"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_d
    return v0
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const-string v0, "is_dirty"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v1, 0x0

    if-nez v6, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->matchUri(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v5, 0x7

    if-eq v3, v5, :cond_7

    const/16 v5, 0x8

    if-eq v3, v5, :cond_6

    const/16 v0, 0xb

    if-eq v3, v0, :cond_5

    const/16 v0, 0xc

    if-eq v3, v0, :cond_4

    const/16 v0, 0x15

    if-eq v3, v0, :cond_2

    const/16 v0, 0x16

    if-eq v3, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p4

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, " AND ACCOUNT_NAME == \'"

    invoke-static {p3, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' AND ACCOUNT_TYPE == \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->mAccountType:Ljava/lang/String;

    const-string p3, "\'"

    invoke-static {p1, p0, p3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    const-string p0, "SYNC_STATE"

    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    :cond_4
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p4

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, " AND ACCOUNT_TYPE LIKE \'com.osp.app.signin\'"

    invoke-static {p3, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TABS"

    invoke-virtual {v6, p1, p2, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    :cond_6
    const-string p0, "READINGLIST._id=?"

    invoke-static {p3, p0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_7
    if-eqz p2, :cond_8

    :try_start_0
    const-string p0, "path"

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, ".html"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_8
    :goto_0
    const-string p0, "READINGLIST"

    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p1, "Update "

    const-string p2, " failed exception: "

    invoke-static {p1, v2, p2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SBrowserProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->setSelectionArgsId([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p4

    :cond_a
    move-object v4, p3

    move-object v5, p4

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProvider;->updateBookmarkInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result v1

    :cond_b
    :goto_2
    return v1
.end method
