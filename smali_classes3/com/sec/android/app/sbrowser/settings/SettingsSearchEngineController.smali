.class public Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;,
        Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

.field private mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->initController()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->lambda$getIconFromWebsiteUrl$0(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "SettingsSearchEngineController"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez v1, :cond_1

    const-string p0, "addItem : MainActivity may be destroyed or destroying"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    :goto_0
    const-string p0, "addItem : invalid item"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->lambda$getIconFromFaviconUrl$1(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getIconFromWebsiteUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->isDefaultIconExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getIconFromFaviconUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/N;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/N;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getIconFromFaviconUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;)V

    return-void
.end method

.method private getIconFromWebsiteUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIconFromWebsiteUrl - calling fetchTouchIcon url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SettingsSearchEngineController"

    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    move-result-object v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/N;

    invoke-direct {v1, p0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/N;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;I)V

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getIconFromWebsiteUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;)V

    return-void
.end method

.method private static getTimeLastUpdated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    const-string v0, "getTimeLastUpdated"

    const-string v1, "SettingsSearchEngineController"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "last_updated"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, " = ?"

    invoke-static {p1, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v2, -0x1

    if-nez p0, :cond_0

    const-string p0, "cursor=null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "getTimeLastUpdated : found item"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide p1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-string p0, "getTimeLastUpdated : Not found in DB"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public static bridge synthetic h(Landroid/graphics/Bitmap;)[B
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/content/Context;Ljava/lang/String;)J
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getTimeLastUpdated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private initController()V
    .locals 2

    const-string v0, "SettingsSearchEngineController"

    const-string v1, "initController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldRequestUpdateForFavicon(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;I)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private isDefaultIconExist(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "_"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "favicon_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getIconFromFaviconUrl$1(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1, p4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getIconFromWebsiteUrl$0(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    const-string p2, "getIconFromWebsiteUrl onContentFetched height="

    const-string p3, "SettingsSearchEngineController"

    invoke-static {p5, p2, p3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/16 p2, 0x10

    if-le p5, p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1, p4}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->getIconFromFaviconUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string v0, "SettingsSearchEngineController"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController$AddItemAsyncTask;

    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mAddItemTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method
