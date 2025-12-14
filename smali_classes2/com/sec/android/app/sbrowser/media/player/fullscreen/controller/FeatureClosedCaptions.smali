.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-void
.end method

.method private getSnackbarPopupTextForClosedCaption(Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f140742

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const p1, 0x7f14104a

    goto :goto_0

    :cond_0
    const p1, 0x7f141049

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private runClosedCaptionItem()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getClosedCaptionVisibility()I

    move-result v0

    const v1, 0x1020002

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setClosedCaptionVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;->getSnackbarPopupTextForClosedCaption(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getClosedCaptionVisibility()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setClosedCaptionVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;->getSnackbarPopupTextForClosedCaption(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 0

    const p0, 0x7f0803f6

    return p0
.end method

.method public getSALoggingEventId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getClosedCaptionVisibility()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f140d0d

    goto :goto_0

    :cond_0
    const p0, 0x7f140d19

    :goto_0
    return p0
.end method

.method public getTextResId()I
    .locals 0

    const p0, 0x7f140742

    return p0
.end method

.method public getVisibility()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    const-string v1, "six-lc-fullscreen-00"

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getClosedCaptionVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public id()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->release()V

    return-void
.end method

.method public bridge synthetic setHoverPopupEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->setHoverPopupEnabled(Z)V

    return-void
.end method

.method public bridge synthetic shouldRemoveOnClickListener()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->shouldRemoveOnClickListener()Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;->runClosedCaptionItem()V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateVisibility()V

    return-void
.end method
