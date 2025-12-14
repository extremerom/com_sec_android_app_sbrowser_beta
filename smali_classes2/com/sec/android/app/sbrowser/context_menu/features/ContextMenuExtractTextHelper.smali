.class public Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;
.super Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;
.source "SourceFile"


# instance fields
.field private mIsExtractTextMenuSelected:Z

.field private mIsExtractTextSelected:Z

.field private mIsTextDetected:Ljava/lang/Boolean;

.field private mNeedToForceClearLiveText:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextMenuSelected:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsTextDetected:Ljava/lang/Boolean;

    return-void
.end method

.method private createDetectTextListener(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsTextDetected:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextMenuSelected:Z

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;-><init>(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->setTextDetectionListener(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;)V

    return-void
.end method

.method private isNeedToClearVisionText()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mNeedToForceClearLiveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextSelected:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method private showNoTextFoundToast(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContextMenuExtractTextHelper"

    const-string v1, "LiveText showNoTextFoundToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mNeedToForceClearLiveText:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->clearDeepSkyInfo()V

    return-void
.end method


# virtual methods
.method public clearDeepSkyInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->isNeedToClearVisionText()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ContextMenuExtractTextHelper"

    const-string v2, "[clearDeepSkyInfo] Reset LiveText and clearExtractTextInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetAndClearExtractTextInfo()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mNeedToForceClearLiveText:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextSelected:Z

    return-void
.end method

.method public initializeLiveTextIfNeeded(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ContextMenuExtractTextHelper"

    const-string v1, "[initializeLiveTextIfNeeded] Creating liveText detect listener and triggering detection"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->createDetectTextListener(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->initializeVisionTextAndStartDetection()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReadyToExtractText()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextSelected:Z

    return-void
.end method

.method public startExtractText(Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsTextDetected:Ljava/lang/Boolean;

    const-string v3, "ContextMenuExtractTextHelper"

    if-nez v2, :cond_1

    const-string p1, "LiveText Detection was not completed"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->prepareAndStartProgressBar()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->mIsExtractTextMenuSelected:Z

    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->stopProgressBarAndRemoveView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->showNoTextFoundToast(Landroid/content/Context;)V

    return v1

    :cond_2
    const-string p0, "LiveText option selected"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->startExtraction()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForSelectExtractText(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return v1
.end method
