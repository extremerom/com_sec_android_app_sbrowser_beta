.class Lcom/sec/terrace/content/browser/TinContentViewCore$4;
.super Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContentViewCore;->initializeFastScrollManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-direct {p0, p2, p3}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V

    const-string p1, "TinFastScrollManager"

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blockTopControlsUpdate()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    const-string v0, "TinFastScrollManager"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->freezeTopControls(Ljava/lang/String;)V

    return-void
.end method

.method public checkFastScrollLayer(FF)I
    .locals 7

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getWebContentsXOffset()I

    move-result p0

    int-to-float p0, p0

    sub-float v5, p1, p0

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->checkFastScrollLayer(JLcom/sec/terrace/content/browser/TinContentViewCore;FF)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTopControlsHeightPix()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result p0

    return p0
.end method

.method public getViewportHeightPix()I
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->g(Lcom/sec/terrace/content/browser/TinContentViewCore;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public isAiFeaturesShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContentViewCallback;->isReadAloudToolbarShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContentViewCallback;->isSummarizedViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isReadArticleAloudToolbarShowing()Z

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

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public notifyFastScrollerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyFastScrollerEnabled(Z)V

    return-void
.end method

.method public restoreTopControlsState()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->unFreezeTopControls()V

    return-void
.end method

.method public runScrollbarVibrate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->runScrollbarVibrate()V

    return-void
.end method

.method public scrollBegin()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isFlingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/base/EventForwarder;->cancelFling(J)V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->scrollBegin(FF)V

    return-void
.end method

.method public scrollBy(F)V
    .locals 11

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move v10, p1

    invoke-interface/range {v1 .. v10}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->tinScrollBy(JLcom/sec/terrace/content/browser/TinContentViewCore;JFFFF)V

    return-void
.end method

.method public scrollEnd()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->scrollEnd()V

    return-void
.end method

.method public setFastScrollBitmap(ILandroid/graphics/Bitmap;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    move v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->setFastScrollBitmap(JLcom/sec/terrace/content/browser/TinContentViewCore;ILandroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGotoPosition(F)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->setGotoPosition(JLcom/sec/terrace/content/browser/TinContentViewCore;F)V

    return-void
.end method

.method public updateLayerAppearance(IZ)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->updateLayerAppearance(JLcom/sec/terrace/content/browser/TinContentViewCore;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
