.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;,
        Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

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

.field private mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->initController()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineTabletUI;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineTabletUI;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEnginePhoneUI;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEnginePhoneUI;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "SearchEngineController"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez v1, :cond_1

    const-string p0, "addItem : MainActivity may be destroyed or destroying"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$3;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;Landroid/content/Context;)V

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

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    return-object p0
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

.method private static byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->addItem(Landroid/content/Context;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getIconFromFaviconUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getIconFromWebsiteUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    return-void
.end method

.method public static getFaviconBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "getFaviconBitmap"

    const-string v1, "SearchEngineController"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "title"

    const-string v2, "image"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    :try_start_1
    const-string p1, "cursor=null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "bing"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const-string p1, "getFaviconBitmap : found item"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :cond_4
    :goto_2
    :try_start_5
    const-string v3, "getFaviconBitmap : item or value is null"

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p1, "getFaviconBitmap : Not found in DB"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :goto_3
    if-eqz p0, :cond_6

    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getFaviconBitmap failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    return-object v0
.end method

.method private getIconFromFaviconUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

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

    const-string v4, "SearchEngineController"

    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;

    move-result-object v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$1;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;->getIconFromWebsiteUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;)V

    return-void
.end method

.method private static getTimeLastUpdated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    const-string v0, "getTimeLastUpdated"

    const-string v1, "SearchEngineController"

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

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isDefaultIconExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Landroid/graphics/Bitmap;)[B
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method private initController()V
    .locals 2

    const-string v0, "SearchEngineController"

    const-string v1, "initController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldRequestUpdateForFavicon(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;I)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private initUi(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getActivity()Landroid/app/Activity;

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

.method public static bridge synthetic j(Landroid/content/Context;Ljava/lang/String;)J
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getTimeLastUpdated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private showPopup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListForSearchEngineListPopupAdapter()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->showPopup(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onShow()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "SearchEngineController"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->dismissPopup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->dismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onHide()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getCurrentSearchEngine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSearchEngineFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "_"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "favicon_"

    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "title"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getFaviconBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "enable_rich_entity_test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "current_search_engine_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "enable_rich_entity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "customized_search_engine_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onSearchEnginePreferenceChanged(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->populate()V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->resetFlagAndPopulate()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58601f1e -> :sswitch_3
        -0x4f0ba016 -> :sswitch_2
        0x42c796d7 -> :sswitch_1
        0x78adffc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onHide()V

    return-void
.end method

.method public onSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToNative(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onItemSelected(Ljava/lang/String;)V

    const-string v0, "2128"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v1, "201"

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->dismissPopup()V

    return-void
.end method

.method public retrySearchEnginePopulate()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldRequestUpdateForFavicon(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SearchEngineController"

    const-string v1, "retrySearchEnginePopulate from Button of Location bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->updateSearchEnginesFavicon()V

    return-void
.end method

.method public setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;->setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V

    return-void
.end method

.method public setSearchEngineButtonImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getSearchEngineFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080548

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06098e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSearchEngineDescription(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getSearchEngineInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f140340

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->isJapaneseLocale(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-static {p2, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v0, "%s"

    invoke-static {v0, p2, v0, p2, v0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1404ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSearchEngineToNative(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEngineHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToNative(Ljava/lang/String;)V

    return-void
.end method

.method public showSearchEnginePopup(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->initUi(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->showPopup()V

    return-void
.end method

.method public updateSearchEngineButtonIcon(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mListener:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;->onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updateSearchEnginesFavicon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const-string p0, "SearchEngineController"

    const-string v0, "SearchEnginePopulateAsyncTask is already running"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;I)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->mSearchEnginePopulateAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method
