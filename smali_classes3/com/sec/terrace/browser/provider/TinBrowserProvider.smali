.class public Lcom/sec/terrace/browser/provider/TinBrowserProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;,
        Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;,
        Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryProviderConstants;
    }
.end annotation


# static fields
.field private static final HISTORY_DEFAULT_PROJECTION:[Ljava/lang/String;

.field private static final SEARCH_RUNESTONE:[Ljava/lang/String;

.field private static final SEARCH_SFINDER:[Ljava/lang/String;

.field private static final SURFING_INTERNET:[Ljava/lang/String;

.field private static final SURFING_INTERNET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mInitializeUriMatcherLock:Ljava/lang/Object;

.field private mIsCategoryMapInit:Z

.field private final mLoadNativeLock:Ljava/lang/Object;

.field private mNativeTerraceBrowserProvider:J

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "url"

    const-string v3, "date"

    const-string v4, "bookmark"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SEARCH_SFINDER:[Ljava/lang/String;

    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SEARCH_RUNESTONE:[Ljava/lang/String;

    const-string v10, "keyword"

    const-string v11, "category"

    const-string v6, "date"

    const-string v7, "type"

    const-string v8, "title"

    const-string v9, "url"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SURFING_INTERNET:[Ljava/lang/String;

    filled-new-array {v0, v2, v3, v1, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->HISTORY_DEFAULT_PROJECTION:[Ljava/lang/String;

    const-string v5, "keyword"

    const-string v6, "category"

    const-string v1, "date"

    const-string v2, "type"

    const-string v3, "title"

    const-string v4, "url"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SURFING_INTERNET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mCategoryMap:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->ensureNativeSideInitialized()V

    return-void
.end method

.method private static buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".browser"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->ensureNativeTerraceDestroyedOnUIThread()V

    return-void
.end method

.method private canHandleContentProviderApiCall()Z
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->ensureUriMatcherInitialized()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;

    invoke-direct {v2, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;-><init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->startBrowserProcessesAndLoadLibrariesSync()V

    return-void
.end method

.method private ensureNativeSideInitialized()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->init(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    :cond_0
    return-void
.end method

.method private ensureNativeTerraceDestroyedOnUIThread()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->destroy(JLcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    :cond_0
    return-void
.end method

.method private ensureUriMatcherInitialized()V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".browser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "history"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "history#"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "surfinginternet"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getBookmarkFromCursor(Landroid/database/Cursor;)I
    .locals 0

    const-string p0, "bookmark"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private getDateFromCursor(Landroid/database/Cursor;)J
    .locals 7

    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->toMilliSecondsTime(JLcom/sec/terrace/browser/provider/TinBrowserProvider;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getIdFromCursor(Landroid/database/Cursor;)I
    .locals 0

    const-string p0, "_id"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private getKeywordFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getParsedUrl(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.co"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "q"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "naver.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "query"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private getParsedUrl(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getUrlFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const-string p0, "title"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTopDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, " "

    const-string v0, "TinBrowserProvider"

    :try_start_0
    new-instance v1, Lcom/google/common/net/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/google/common/net/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/common/net/b;->b()Lcom/google/common/net/b;

    move-result-object v1

    iget-object p0, v1, Lcom/google/common/net/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v2, "domain does not end with a public suffix "

    invoke-static {v2, p1, p0}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    const-string v2, "Not a valid domain name  "

    invoke-static {v2, p1, p0}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private getUrlCategory(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getParsedUrl(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getUrlFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const-string p0, "url"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initCategoryMap()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mIsCategoryMapInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "url_categories.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mIsCategoryMapInit:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reading json data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "TinBrowserProvider"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$4;-><init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private onHistoryChanged()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "history"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "surfinginternet"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    return-void
.end method

.method private queryHistory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v4, p1

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p1, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->HISTORY_DEFAULT_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->queryHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    const/4 p4, 0x1

    if-ge p3, p4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p2, :cond_4

    const-string p3, "title"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SEARCH_SFINDER:[Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getIdFromCursor(Landroid/database/Cursor;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getUrlFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getDateFromCursor(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getBookmarkFromCursor(Landroid/database/Cursor;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, p4, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_4
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SEARCH_RUNESTONE:[Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getIdFromCursor(Landroid/database/Cursor;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getUrlFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getDateFromCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3, p4, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_6
    :goto_3
    return-object p1
.end method

.method private queryKeyword([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v4, p1

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p1, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SURFING_INTERNET_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :goto_2
    const/4 p1, 0x0

    move v0, p1

    :goto_3
    array-length v1, p3

    if-ge v0, v1, :cond_2

    :try_start_0
    aget-object v1, p3, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide v5, 0xa9730b66800L

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while converting time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinBrowserProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->querySurfedDataFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    const/4 p4, 0x1

    if-ge p3, p4, :cond_3

    goto :goto_5

    :cond_3
    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->initCategoryMap()V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance p3, Landroid/database/MatrixCursor;

    sget-object p4, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->SURFING_INTERNET:[Ljava/lang/String;

    invoke-direct {p3, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getDateFromCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getUrlFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getKeywordFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->getUrlCategory(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p3

    :cond_5
    :goto_5
    return-object p2
.end method

.method private startBrowserProcessesAndLoadLibrariesSync()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized()V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcher;->asyncPrefetchLibrariesToMemory()V

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesSync(IZZ)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->removeHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "TinBrowserProvider: query - unknown URL uri = "

    invoke-static {p2, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$3;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$3;-><init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->ensureUriMatcherInitialized()V

    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "vnd.android.cursor.item/browser-history"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TinBrowserProvider: getType - unknown URL "

    invoke-static {v0, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/browser-history"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->fromContentValues(Landroid/content/ContentValues;)Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;

    move-result-object p2

    iget-object v0, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;->get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mNativeTerraceBrowserProvider:J

    iget-object v5, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mUrl:Ljava/lang/String;

    iget-object v6, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mCreated:Ljava/lang/Long;

    iget-object v7, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mDate:Ljava/lang/Long;

    iget-object v8, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mFavicon:[B

    iget-object v9, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mTitle:Ljava/lang/String;

    iget-object v10, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mVisits:Ljava/lang/Integer;

    iget-wide v11, p2, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mId:J

    move-object v4, p0

    invoke-interface/range {v1 .. v12}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;->addHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "TinBrowserProvider: query - unknown URL uri = "

    invoke-static {p2, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must have a History URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;-><init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->queryKeyword([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "TinBrowserProvider: query - unknown URL uri = "

    invoke-static {p2, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->queryHistory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_3

    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
