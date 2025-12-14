.class public Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CATEGORIES_SPINNER_SALOGGING:[Ljava/lang/String;

.field private static sShowSecretModeDisclaimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "5"

    const-string v5, "6"

    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "4"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->CATEGORIES_SPINNER_SALOGGING:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->sShowSecretModeDisclaimer:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->lambda$sendDataToSearchClient$0(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V

    return-void
.end method

.method public static createShareIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v7, 0x0

    move v9, v3

    move v10, v9

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v12

    invoke-static {v10, v12}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getUriForFile(Ljava/io/File;Z)Landroid/net/Uri;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_2

    :goto_2
    move v10, v9

    goto :goto_5

    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTotalSize()J

    move-result-wide v12

    add-long/2addr v12, v7

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "*/*"

    if-eqz v8, :cond_3

    :goto_3
    move-object v4, v10

    move-wide v7, v12

    goto :goto_2

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v11, "/"

    if-eqz v8, :cond_6

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-eq v4, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v7

    :cond_5
    :goto_4
    move v10, v9

    move-wide v7, v12

    goto :goto_5

    :cond_6
    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v2, v3

    aget-object v4, v4, v3

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    const-string v8, "/*"

    invoke-static {v4, v7, v8}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    invoke-static {p0, v7, v8}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sem_extra_chooser_content_count"

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sem_extra_chooser_content_size"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v1, "android.intent.extra.STREAM"

    if-ne p0, v5, :cond_e

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getUriForFile(Ljava/io/File;Z)Landroid/net/Uri;

    move-result-object p0

    :goto_6
    if-nez p0, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.action.SEND"

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "android.intent.action.SEND_MULTIPLE"

    :goto_7
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getChangeBounds(Z)LY2/i;
    .locals 4

    new-instance v0, LY2/i;

    invoke-direct {v0}, LY2/i;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object v0
.end method

.method private static getContentValuesForSmartSearch(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDisplayUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDimensFromResources(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getParentActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    if-ne v2, v3, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortenedDisplayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isDarkModeEnabled(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static isSecretModeEnabled(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$sendDataToSearchClient$0(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getContentValuesForSmartSearch(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->smartSearchChunkInsert(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V

    return-void
.end method

.method public static sendDataToSearchClient(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->initSearchClient()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/q;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public static varargs setDownloadItemButtonBackground(Landroid/content/Context;[Landroid/widget/TextView;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06039f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0603a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabledWithTextColor(Landroid/widget/TextView;ZI)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set button shape enabled "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadHistoryUi"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static setShouldShowSecretModeDisclaimer(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->sShowSecretModeDisclaimer:Z

    return-void
.end method

.method public static shouldShowSecretModeDisclaimer()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->sShowSecretModeDisclaimer:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static smartSearchChunkInsert(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x64

    if-le v0, v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Ljava/util/List;)I

    return-void
.end method
