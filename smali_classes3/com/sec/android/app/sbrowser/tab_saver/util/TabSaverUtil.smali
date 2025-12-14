.class public Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

.field private final mWriteFileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mWriteFileLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    return-void
.end method

.method private getDomainUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "content://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    const-string v0, "^www\\.|^m\\.|^mobile\\."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public getHomePageUrl(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageForSecretMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "none"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "internet-native://newtab/"

    :cond_1
    return-object p0
.end method

.method public getMaxVisibleTabCount()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public getTerraceStateFileName(IIZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTerraceStateFilePrefix(IZ)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isHomepageUrl(ZLjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceState;->isIncognito()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)Z

    move-result p0

    return p0
.end method

.method public isNeedToSkipRestore(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)Z
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "TabSaver"

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[isNeedToSkipRestore] not enough info about it was available."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-eqz p3, :cond_1

    const-string p0, "[isNeedToSkipRestore] its state could not be restored."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p0, "[isNeedToSkipRestore] terrace state is null - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->supportRemoveDuplicateHomepageTab()Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isLocked()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->hasGroup()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v3

    invoke-interface {p3, v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->shouldBeClosed(I)I

    move-result p3

    if-nez p3, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "[isNeedToSkipRestore] tab id "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cleaned up"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    if-eqz p4, :cond_6

    const-string p0, "[isNeedToSkipRestore] tab will be set as active - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    iget-object p1, p2, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    if-nez p1, :cond_7

    const-string p0, "[isNeedToSkipRestore] WebContentsState is null - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    invoke-virtual {p1, v1}, Lcom/sec/terrace/TerraceState$WebContentsState;->hasNavigationHistory(Z)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p0, "[isNeedToSkipRestore] hasNavigationHistory - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    invoke-virtual {p1, v1}, Lcom/sec/terrace/TerraceState$WebContentsState;->getFirstCommittedUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isHomepageUrl(ZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "[isNeedToSkipRestore] tab url is not homepage url - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    const-string p0, "[isNeedToSkipRestore] it was unused homepage url tab. - true"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    :goto_0
    const-string p0, "[isNeedToSkipRestore] tab is locked or has group - false"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isTabBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public loadIntegerMapFromFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "TabSaver"

    const-string v1, "[loadIntegerMapFromFile] read map from file: "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-object v2, v1

    goto :goto_3

    :catch_1
    move-object v2, v1

    goto :goto_5

    :catch_2
    move-object v2, v1

    goto :goto_6

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    if-eqz p0, :cond_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_3
    :goto_3
    const-string p0, "[loadIntegerMapFromFile] Failed to find color list class"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v1, v2

    goto :goto_7

    :catch_4
    :goto_5
    const-string p0, "[loadIntegerMapFromFile] Failed to load file: "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    :goto_6
    const-string p0, "[loadIntegerMapFromFile] Failed to find file: "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    :goto_7
    return-object v1
.end method

.method public parseInfoFromFilename(ILjava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->parseInfoFromFilename(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public restoreTerraceState(II)Lcom/sec/terrace/TerraceState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->restoreTerraceState(Ljava/io/File;II)Lcom/sec/terrace/TerraceState;

    move-result-object p0

    return-object p0
.end method

.method public saveIntegerMapToFile(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "[saveIntegerMapToFile] Failed to find file: "

    const-string v1, "[saveIntegerMapToFile] Failed to save file: "

    const-string v2, "[saveIntegerMapToFile] save map to file: "

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mWriteFileLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v5, "TabSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    if-eqz p0, :cond_1

    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_0
    :try_start_a
    const-string p0, "TabSaver"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string p0, "TabSaver"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0

    :cond_3
    :goto_5
    return-void
.end method

.method public saveIntegerMapToFile([B)V
    .locals 5

    const-string v0, "[saveIntegerMapToFile] instance ID : "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mWriteFileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v2

    const-string v3, "TabSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "tab_state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/TerraceImportantFileWriter;->writeFileAtomically(Ljava/lang/String;[B)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveTerraceState(IIZLcom/sec/terrace/TerraceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFile(Ljava/io/File;IIZ)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->saveState(Ljava/io/File;Lcom/sec/terrace/TerraceState;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p4, "TabSaver"

    const-string v1, "Out of memory error while attempting to save tab state. Erasing."

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->deleteTerraceState(Ljava/io/File;IIZ)V

    return v0
.end method

.method public serializeTabColorData(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[serializeTabColorData] size : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabSaver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getFaviconDominantColor()I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public serializeTabManager(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;)[B"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    add-int/2addr v4, v5

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v4, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentIndex(Z)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v4, v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentIndex(Z)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getContentPageTabIndex()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "[serializeTabManager] counts: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "TabSaver"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueMobile()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueDex()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyDex()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getVisitCount()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getActiveTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueMobile()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueDex()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyDex()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getVisitCount()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getActiveTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isLocked()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupColorId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getPhoneUserAgentOption()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getDexUserAgentOption()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getZoomValueMobile()D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getZoomValueDex()D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isZoomApplyToThisTabOnlyDex()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getVisitCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getActiveTime()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public serializeTabThemeData(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[serializeTabThemeData] size : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabSaver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method
