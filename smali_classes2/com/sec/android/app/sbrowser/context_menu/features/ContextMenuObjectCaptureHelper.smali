.class public Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;
.super Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;
.source "SourceFile"


# instance fields
.field private mIsObjectCaptureSelected:Z


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

.method private isNeedToClearObjectCapture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->mIsObjectCaptureSelected:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public clearDeepSkyInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->isNeedToClearObjectCapture()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ContextMenuObjectCaptureHelper"

    const-string v1, "[clearDeepSkyInfo] Remove Object Capture info"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->removeOCInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->mIsObjectCaptureSelected:Z

    return-void
.end method

.method public onReadyToClipSubject()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->mIsObjectCaptureSelected:Z

    return-void
.end method

.method public startObjectCapture(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->initAndStartObjectCapture()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForObjectCapture(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return v0
.end method
