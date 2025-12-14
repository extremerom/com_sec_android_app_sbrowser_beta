.class Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;
.super Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;
.source "SourceFile"


# instance fields
.field private mGoToBottomBitmap:Landroid/graphics/Bitmap;

.field private mGoToBottomButtonVisible:Z

.field private mGoToBottomLayerExists:Z

.field private mPrevScrollOffsetY:F

.field private mScrollToBottom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;-><init>(Landroid/content/Context;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;Lorg/chromium/content_public/browser/RenderCoordinates;)V

    return-void
.end method


# virtual methods
.method public getDistance(FFF)F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->getViewportHeightPix()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    sub-float/2addr p1, p2

    add-float/2addr p1, p3

    return p1
.end method

.method public getDrawable()I
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mNightState:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/sec/terrace/R$drawable;->go_to_bottom_mtrl_night:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/sec/terrace/R$drawable;->go_to_bottom_mtrl:I

    :goto_0
    return p0
.end method

.method public getGoToButtonBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getID()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getMessage()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getPrevScrollOffsetY()F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mPrevScrollOffsetY:F

    return p0
.end method

.method public getScrollType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public hasReachedToScrollablePoint(FFFFF)Z
    .locals 0

    mul-float/2addr p1, p2

    mul-float/2addr p3, p2

    add-float/2addr p3, p1

    mul-float/2addr p4, p2

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isGoToBottomEnabled()Z

    move-result p0

    return p0
.end method

.method public isGoToButtonLayerExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomLayerExists:Z

    return p0
.end method

.method public isScrollToTopOrBottom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mScrollToBottom:Z

    return p0
.end method

.method public isScrollingCompleted(FFFFF)Z
    .locals 0

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    if-nez p1, :cond_0

    cmpl-float p0, p5, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomButtonVisible:Z

    return p0
.end method

.method public resetGoToButtonBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setGoToButtonLayerState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomLayerExists:Z

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "mGoToBottomLayerExists layerExists = "

    const-string v0, "TinGoToBottomScroller"

    invoke-static {p0, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPrevScrollOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mPrevScrollOffsetY:F

    return-void
.end method

.method public setScrollForGoToButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mScrollToBottom:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;->mGoToBottomButtonVisible:Z

    return-void
.end method

.method public shouldScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowGoToButton(FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
