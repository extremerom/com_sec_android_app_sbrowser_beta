.class public Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;
    }
.end annotation


# instance fields
.field private mCheckHoverScrollStart:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;

.field private mDoScrollMove:Z

.field private mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

.field private mHoverAreaHeightPix:I

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDeltaX:I

.field private mHoverScrollDeltaY:I

.field private mHoverScrollDirection:I

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverX:I

.field private mHoverY:I

.field private mInVSync:Z

.field private mIsHoverScrollEnabled:Z

.field private mIsSPenHoverResetForFling:Z

.field private mIsToolBarInTranslation:Z

.field private mScrollStarted:Z

.field private mSendGestureScrollUpdateForHover:Z

.field final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mInVSync:Z

    new-instance v1, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;-><init>(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    move-object v1, p1

    check-cast v1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollSpeed:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$dimen;->hover_scroll_area_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    new-instance p1, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;-><init>(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->updateFrameInfo(II)V

    return-void
.end method

.method private checkHoverScrollEnabled()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsHoverScrollEnabled:Z

    return-void
.end method

.method private computeVerticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollYPixInt()I

    move-result p0

    return p0
.end method

.method private freezeTopControls()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "TinSPenHoverScroller"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->freezeTopControls(Ljava/lang/String;)V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    sget-object v1, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    return-object p0
.end method

.method private getMinPageScaleFactor()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getMinPageScaleFactor()F

    move-result p0

    return p0
.end method

.method private getPageScaleFactor()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getPageScaleFactor()F

    move-result p0

    return p0
.end method

.method private handleHoverScrolling(I)V
    .locals 5

    iget v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "4"

    goto :goto_0

    :cond_2
    const-string v2, "3"

    goto :goto_0

    :cond_3
    const-string v2, "2"

    goto :goto_0

    :cond_4
    const-string v2, "1"

    :goto_0
    if-eqz p1, :cond_5

    const-string v3, "201"

    const-string v4, "2182"

    invoke-static {v3, v4, v2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverRecognitionStartTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "handleHoverScrolling Scroll Direction="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TinSPenHoverScroller"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setInitVSync()V

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setEnableVSync(Z)V

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDoScrollMove:Z

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-virtual {p1, p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->addListener(Lorg/chromium/content_public/browser/GestureStateListener;I)V

    :cond_6
    return-void
.end method

.method private initVSync()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private isHoverScrollEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;->isHoverScrollEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHoverScrollOn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsHoverScrollEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x4002

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isSPenHoverScrollBlocked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsToolBarInTranslation:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isHoverScrollWithinBoundaries(IIIIII)Z
    .locals 1

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    add-int v0, p0, p3

    if-le p2, v0, :cond_0

    sub-int v0, p4, p0

    if-ge p2, v0, :cond_0

    add-int v0, p6, p0

    if-le p1, v0, :cond_0

    sub-int p0, p5, p0

    if-lt p1, p0, :cond_2

    :cond_0
    if-lt p2, p3, :cond_2

    if-gt p2, p4, :cond_2

    if-lt p1, p6, :cond_2

    if-le p1, p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSPenHoverScrollBlocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsInTranslation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrolling()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isScrollingPossible(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getPageScaleFactor()F

    move-result v0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getMinPageScaleFactor()F

    move-result p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    :cond_1
    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private onStartScroll()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDoScrollMove:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isToolBarInTranslation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->doHoverScrollMove()V

    :cond_0
    return-void
.end method

.method private resetHoverCursor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;->resetSPenHoverCursor()V

    return-void
.end method

.method private scrollBegin()V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sec/terrace/ui/base/TinEventForwarder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p0, v4

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollBegin(JFFFF)V

    return-void
.end method

.method private scrollBy(IIII)V
    .locals 1

    iput p3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaX:I

    iput p4, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaY:I

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mSendGestureScrollUpdateForHover:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mSendGestureScrollUpdateForHover:Z

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->scrollBy(IIII)V

    return-void
.end method

.method private scrollEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/ui/base/TinEventForwarder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollEnd(J)V

    return-void
.end method

.method private setEnableVSync(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->updateVSync()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopVSync()V

    :goto_0
    return-void
.end method

.method private showTopControls()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setToolBarInTranslation(Z)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->forceUnFreezeAndShowTopControls(Z)V

    :cond_1
    return-void
.end method

.method private stopVSync()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mInVSync:Z

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private unFreezeTopControls()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->unFreezeTopControls()V

    return-void
.end method

.method private updateFrameInfo(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isToolBarInTranslation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setToolBarInTranslation(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    :cond_0
    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mSendGestureScrollUpdateForHover:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sec/terrace/ui/base/TinEventForwarder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaX:I

    int-to-float v5, p1

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaY:I

    int-to-float v6, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollBy(JFFFF)V

    :cond_1
    return-void
.end method

.method private updateVSync()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mInVSync:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mInVSync:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->initVSync()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateFrameInfoForTest(II)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->updateFrameInfo(II)V

    return-void
.end method

.method public doHoverScrollMove()V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverRecognitionStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollStartTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mScrollStarted:Z

    const-string v1, "TinSPenHoverScroller"

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "handleHoverScrolling Scroll started!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->scrollBegin()V

    iput-boolean v4, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mScrollStarted:Z

    :cond_1
    iget v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollSpeed:I

    const-wide/16 v5, 0x2

    cmp-long v5, v2, v5

    const-wide/16 v6, 0x4

    if-lez v5, :cond_2

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    int-to-double v2, v0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    :goto_0
    mul-double/2addr v2, v5

    double-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    cmp-long v5, v2, v6

    const-wide/16 v6, 0x5

    if-ltz v5, :cond_3

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    int-to-double v2, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    goto :goto_0

    :cond_3
    cmp-long v2, v2, v6

    if-ltz v2, :cond_4

    int-to-double v2, v0

    const-wide v5, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    :cond_4
    :goto_1
    iget v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    const/4 v3, 0x3

    if-ne v2, v4, :cond_5

    :goto_2
    mul-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    if-ne v2, v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v5, 0x0

    if-eq v2, v4, :cond_a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    goto :goto_5

    :cond_7
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, " else OverGlow "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    :goto_4
    iget v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverX:I

    iget v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverY:I

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->scrollBy(IIII)V

    goto :goto_6

    :cond_a
    :goto_5
    iget v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverX:I

    iget v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverY:I

    invoke-direct {p0, v1, v2, v5, v0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->scrollBy(IIII)V

    :goto_6
    return-void
.end method

.method public doVSync()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->onStartScroll()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleViewRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportWidthPixInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPixInt()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public gethoverScrollDeltaX()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaX:I

    return p0
.end method

.method public gethoverScrollDeltaY()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDeltaY:I

    return p0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isToolBarInTranslation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->checkHoverScrollEnabled()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isFlingActive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsSPenHoverResetForFling:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrollOn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v10, v3

    iput v10, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverY:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->getVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget v9, v11, Landroid/graphics/Rect;->left:I

    move-object v3, p0

    move v4, v0

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrollWithinBoundaries(IIIIII)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    :goto_0
    return v2

    :cond_7
    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mCheckHoverScrollStart:Z

    if-nez p1, :cond_8

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mCheckHoverScrollStart:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollStartTime:J

    :cond_8
    iget p1, v11, Landroid/graphics/Rect;->top:I

    if-lt v10, p1, :cond_a

    iget v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    add-int/2addr v3, p1

    if-gt v10, v3, :cond_a

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isScrollingPossible(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->computeVerticalScrollOffset()I

    move-result p1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsToolBarInTranslation:Z

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->showTopControls()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->freezeTopControls()V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setSPenHoverIcon(I)V

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_2

    :cond_a
    iget p1, v11, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    sub-int v3, p1, v3

    if-lt v10, v3, :cond_b

    if-gt v10, p1, :cond_b

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isScrollingPossible(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->freezeTopControls()V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setSPenHoverIcon(I)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_2

    :cond_b
    iget p1, v11, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_c

    iget v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    add-int/2addr p1, v3

    if-gt v0, p1, :cond_c

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isScrollingPossible(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setSPenHoverIcon(I)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_2

    :cond_c
    iget p1, v11, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverAreaHeightPix:I

    sub-int v3, p1, v3

    if-lt v0, v3, :cond_d

    if-gt v0, p1, :cond_d

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isScrollingPossible(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setSPenHoverIcon(I)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->handleHoverScrolling(I)V

    :goto_2
    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    return v2
.end method

.method public isFlingActive()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->hasActiveFlingScroll()Z

    move-result p0

    return p0
.end method

.method public isHoverScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDoScrollMove:Z

    return p0
.end method

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public isToolBarInTranslation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsToolBarInTranslation:Z

    return p0
.end method

.method public setDelegate(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;

    return-void
.end method

.method public setHoverScrollDirection(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    return-void
.end method

.method public setInitVSync()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mInVSync:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->initVSync()V

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;->setSPenHoverIcon(I)V

    return-void
.end method

.method public setToolBarInTranslation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsToolBarInTranslation:Z

    return-void
.end method

.method public stopHoverScroll()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDoScrollMove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsSPenHoverResetForFling:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsSPenHoverResetForFling:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Hover Scroll on direction="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is stopping!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TinSPenHoverScroller"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mHoverScrollDirection:I

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mCheckHoverScrollStart:Z

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mDoScrollMove:Z

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setEnableVSync(Z)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->removeListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    :cond_2
    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mSendGestureScrollUpdateForHover:Z

    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setSPenHoverIcon(I)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->resetHoverCursor()V

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsSPenHoverResetForFling:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mIsSPenHoverResetForFling:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->scrollEnd()V

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->mScrollStarted:Z

    :goto_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->unFreezeTopControls()V

    return-void
.end method
