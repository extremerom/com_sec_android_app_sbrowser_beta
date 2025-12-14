.class public Lcom/sec/terrace/content/browser/TinGestureStateListener;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "SourceFile"


# instance fields
.field private final mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

.field private mIsScrollStart:Z

.field private mLogCnt:I

.field private mPinchStartPageScaleFactor:F


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mIsScrollStart:Z

    iput v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-void
.end method

.method private getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getWebContentsImpl()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method

.method private onScrollingStateChanged()V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBottomControlsHeightPix()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getBottomShownPix()F

    move-result p0

    cmpl-float p0, p0, v4

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight(IIZ)V

    return-void
.end method


# virtual methods
.method public filterTapOrPressEvent(III)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContentViewCallback;->clearBitmapData()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->filterTapOrPressEvent(III)Z

    move-result p0

    return p0
.end method

.method public getPinchStartPageScaleFactor()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mPinchStartPageScaleFactor:F

    return p0
.end method

.method public onFlingEndGesture(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->onScrollingStateChanged()V

    return-void
.end method

.method public onPinchEnded()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getPageScaleFactor()F

    move-result v0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mPinchStartPageScaleFactor:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const-string p0, "2004"

    goto :goto_0

    :cond_0
    const-string p0, "2005"

    :goto_0
    const-string v0, "201"

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPinchStarted()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getPageScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mPinchStartPageScaleFactor:F

    return-void
.end method

.method public onScrollBeginWithScrollbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->runScrollbarVibrate()V

    :cond_0
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getFastScrollManager()Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->onScrollEnded()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mIsScrollStart:Z

    iput v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->onScrollingStateChanged()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceContentViewCallback;->onScrollEnded(II)V

    return-void
.end method

.method public onScrollStarted(IIZ)V
    .locals 0

    iget-object p3, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p3}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/sec/terrace/TerraceContentViewCallback;->onScrollStarted(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mIsScrollStart:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getFastScrollManager()Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->onScrollBegin()V

    :cond_0
    return-void
.end method

.method public onSingleTap(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onSingleTap(Z)V

    return-void
.end method

.method public printLog(FFFFFFFF)V
    .locals 4

    iget v0, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    div-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mIsScrollStart:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFrameInfo scrollOffsetX "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scrollOffsetY "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pageScaleFactor "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " contentWidth "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " contentHeight "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " viewportWidth "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " viewportHeight "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " topBarShownPix "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SBRTOUCHLOG"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinGestureStateListener;->mLogCnt:I

    return-void
.end method
