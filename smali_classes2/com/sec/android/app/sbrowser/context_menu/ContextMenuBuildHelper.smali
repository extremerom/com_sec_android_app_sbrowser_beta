.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDictionaryPackage:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private final mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method private canCaptureObjectFromImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isBitmapReceived()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private canExtractTextFromImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isBitMapReceived()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentVisibleTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getDisabledDefaultOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 6
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0336

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b032f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b0333

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUnavailableUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isAddToHomeScreenAvailable()Z

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isInstallWebAppAvailable()Z

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isAddBookmarkAvailable()Z

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isSavePageAvailable()Z

    move-result v4

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const v5, 0x7f0b0330

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f0b0339

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v3, :cond_5

    const v0, 0x7f0b032d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v1, :cond_6

    const v0, 0x7f0b032e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v2, :cond_7

    const v0, 0x7f0b0334

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v4, :cond_8

    const v0, 0x7f0b0337

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isZoomAvailable()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFindAvailable()Z

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isPrintAvailable()Z

    move-result p0

    if-nez v0, :cond_9

    const v2, 0x7f0b033a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v1, :cond_a

    const v2, 0x7f0b0332

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez p0, :cond_b

    const v2, 0x7f0b0335

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    if-nez v0, :cond_c

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    const p0, 0x7f0b0331

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object p1
.end method

.method private getDisabledImageOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 11
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isImageToolkitAvailable(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result v1

    const v2, 0x7f0b0326

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b033e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFindOnPageRunning()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->shouldAddBoardingPassMenu(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2

    :cond_2
    :goto_1
    const v6, 0x7f0b0327

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v6, v4

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFindOnPageRunning()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->shouldAddEsimMenu()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v5

    goto :goto_4

    :cond_4
    :goto_3
    const v7, 0x7f0b0314

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v7, v4

    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFindOnPageRunning()Z

    move-result v8

    const-string v9, "ContextMenuBuildHelper"

    if-nez v8, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->canExtractTextFromImage()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    move v8, v5

    goto :goto_6

    :cond_6
    :goto_5
    const-string v8, "LiveText getDisabledImageOptions extract text not supported"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f0b0343

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v8, 0x7f0b031b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v8, v4

    :goto_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFindOnPageRunning()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->isObjectCaptureSupported()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->canCaptureObjectFromImage()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_7

    :cond_7
    move v4, v5

    goto :goto_8

    :cond_8
    :goto_7
    const-string v5, "[Object Capture] object capture is not supported"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0b0328

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0b0315

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    if-eqz v8, :cond_9

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    const v1, 0x7f0b034f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0318

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v1

    const v4, 0x7f0b0319

    const v5, 0x7f0b033c

    if-nez v1, :cond_a

    const v1, 0x7f0b033d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b031a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0b0351

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b031c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isSecretMode()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isImageToolkitAvailable(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v0
.end method

.method private getDisabledLinkOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 10
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    const v2, 0x7f0b031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b0355

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0b0320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0b0356

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isSecretMode()Z

    move-result v1

    const v6, 0x7f0b0322

    const v7, 0x7f0b0358

    const v8, 0x7f0b0321

    const v9, 0x7f0b0357

    if-eqz v1, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v1, 0x7f0b035c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const v1, 0x7f0b0354

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b031e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0352

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b031d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0369

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0325

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0b032a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const p0, 0x7f0b035a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const p0, 0x7f0b0323

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method private getDisabledOptions(ILcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 3
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x7f0b0344

    const v2, 0x7f0b0345

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledLinkOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const v1, 0x7f0b034b

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledImageOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const v1, 0x7f0b034e

    if-ne p1, v1, :cond_4

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledVideoOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const v1, 0x7f0b0346

    if-ne p1, v1, :cond_5

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledDefaultOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const v1, 0x7f0b0347

    if-eq p1, v1, :cond_6

    const v1, 0x7f0b034c

    if-ne p1, v1, :cond_7

    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledSelectionOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v0
.end method

.method private getDisabledSelectionOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 4
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionEditable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionPassword()Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const v3, 0x7f0b0360

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    const v3, 0x7f0b035f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canPaste()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const v3, 0x7f0b0363

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b0340

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canClipboard(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const v3, 0x7f0b035e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b033f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditableEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const p1, 0x7f0b0341

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v1, :cond_b

    const p1, 0x7f0b0362

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isShareAvailable()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    const p1, 0x7f0b0365

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isIncognito()Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    const p1, 0x7f0b0366

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    if-nez v1, :cond_10

    if-nez v2, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isContentSchemeUrl()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isAddToNoteSupported()Z

    move-result p0

    if-nez p0, :cond_11

    :cond_10
    const p0, 0x7f0b035d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-object v0
.end method

.method private getDisabledVideoOptions(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 0
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDownloadableScheme(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0b035b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getExtensionEnabledOptions(ILcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;
    .locals 2
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x7f0b0347

    if-eq p1, v1, :cond_0

    const v1, 0x7f0b034c

    if-ne p1, v1, :cond_7

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionEditable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionPassword()Z

    move-result v1

    if-eqz p1, :cond_6

    if-nez v1, :cond_3

    const p1, 0x7f0b0360

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canPaste()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0b0363

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canClipboard(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f0b035e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditableEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    const p0, 0x7f0b0341

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v1, :cond_7

    const p0, 0x7f0b035f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method private isAddBookmarkAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUnavailableUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isAddToHomeScreenAvailable()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isSecretMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUnavailableUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    move v1, v0

    :cond_6
    :goto_0
    return v1
.end method

.method private isAddToNoteSupported()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFromSBrowserTab()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->doesSupportAddToNote()Z

    move-result p0

    return p0
.end method

.method private isContentSchemeUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isContentSchemeUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDictionaryAvailable()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->sDictionaryPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p0, "ContextMenuBuildHelper"

    const-string v0, "[isDictionaryAvailable] Dictionary app is not installed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->sDictionaryPackage:Ljava/lang/String;

    return v1
.end method

.method private static isEmptyUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isExtensionMenuAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private isFindAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string p0, "ContextMenuBuildHelper"

    const-string v0, "isFindAvailable() : tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isFindOnPageRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFromSBrowserTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFindOnPageRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isFromSBrowserTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return p0
.end method

.method private isImageToolkitAvailable(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isDrawingAssistSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result p0

    return p0
.end method

.method private isInstallWebAppAvailable()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isSecretMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUnavailableUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_0
    return v1
.end method

.method private isPrintAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const-string v1, "ContextMenuBuildHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isPrintingDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isPrintAvailable() : isPrintingDisabled = true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isPdfWritingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "isPrintAvailable() : isPdfWritingInProgress"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string p0, "isPrintAvailable() : tab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isSavePageAvailable()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFromSBrowserTab()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isUnavailableUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "text/html"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private isSecretMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFromSBrowserTab()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isShareAvailable()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuntimeException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ContextMenuBuildHelper"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private isUnavailableUrl(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVisibleDefaultGroup(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSourceType()I

    move-result p0

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZoomAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_0

    const-string p0, "ContextMenuBuildHelper"

    const-string v0, "isZoomAvailable() : mTabDelegate == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private shouldAddBoardingPassMenu(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->isBoardingPassDetectionSupported()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->getBarcodeType()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private shouldAddEsimMenu()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->getBarcodeType()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public addExtensionItemsInMenu(Landroid/view/Menu;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x7f0b034a

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getExtensionId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int v7, v2, v4

    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v3, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sub-int p0, v1, v5

    if-lez p0, :cond_3

    add-int/2addr v2, v1

    const-string p0, "divider"

    const p2, 0x7f0b0342

    invoke-interface {p1, v0, p2, v2, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p0, "ContextMenuBuildHelper"

    const-string p1, "There are no any extension items."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addOtherSelectionMenuIfNeeded(Landroid/view/Menu;I)V
    .locals 2

    const v0, 0x7f0b034c

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isDictionaryAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionPassword()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0c0017

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const p2, 0x7f0b0361

    const v0, 0x7f1403b4

    const v1, 0x7f0b034d

    invoke-interface {p1, v1, p2, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public buildContextMenu(Landroid/view/Menu;ILcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isExtensionTerrace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getExtensionEnabledOptions(ILcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDisabledOptions(ILcom/sec/terrace/TerraceContextMenuParams;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public createHeaderText(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isEmptyUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v2, 0x7f1403b3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getDictionaryPackage()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->sDictionaryPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleGroup(Lcom/sec/terrace/TerraceContextMenuParams;)I
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7f0b0344

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result v0

    if-nez v0, :cond_1

    const p0, 0x7f0b034b

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0b0345

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f0b034e

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f0b034c

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x7f0b0347

    return p0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isVisibleDefaultGroup(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f0b0346

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public initializeExtensionMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isFromSBrowserTab()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ContextMenuBuildHelper"

    const-string p1, "Extension is supported in case of only SBrowserMainActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->isExtensionMenuAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getExtensionMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->addExtensionItemsInMenu(Landroid/view/Menu;Ljava/util/List;)V

    return-void
.end method

.method public initializeMenu()Landroid/view/Menu;
    .locals 1

    new-instance v0, Ls/i;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Ls/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
