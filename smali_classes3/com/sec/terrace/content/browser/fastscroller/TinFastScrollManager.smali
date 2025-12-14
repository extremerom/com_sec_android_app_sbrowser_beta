.class public abstract Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;


# static fields
.field static DEBUG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

.field private mDragOn:Z

.field private final mFastScrollHandler:Landroid/os/Handler;

.field private final mItems:[I

.field private mPosition:F

.field private final mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

.field private final mScrollItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

.field private mSelectedLayer:I

.field private mViewPortWidthPix:F

.field private mWebContentsXOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mPosition:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mViewPortWidthPix:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mWebContentsXOffset:I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mItems:[I

    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$2;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mFastScrollHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-static {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->initGoToButtons()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->initializeScrollbarScroller()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setDebugMode()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setDisplaySize()V

    return-void
.end method

.method private getCommitXPositionRatio()F
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fast_scroll_position_x"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private initGoToButtons()V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mItems:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-static {v3, v4, v5, p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollItemsFactory;->create(ILandroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;)Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initializeScrollbarScroller()V
    .locals 3

    const-string v0, "enable-hit-testable-scrollbar-in-visual-viewport"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    return-void
.end method

.method private isScrollBar(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTalkBackRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private isValidGoToButton(II)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0

    :cond_3
    return v0
.end method

.method private setDebugMode()V
    .locals 2

    :try_start_0
    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "get"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v0, "sbr.fastscroll.debug"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TinFastScrollManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setFastscrollBitmapPosition()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->getCommitXPositionRatio()F

    move-result v0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mViewPortWidthPix:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setPosition(F)V

    return-void
.end method

.method private shouldIgnoreChild(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->shouldIgnoreGoToButton()Z

    move-result p0

    return p0
.end method

.method private updateStateOnEventChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetMainFrameScroll()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setIsTouching(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetScrollbarScrollerHidingTimer()V

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setIsTouching(Z)V

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->resetGoToButtonHidingTimer()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract blockTopControlsUpdate()V
.end method

.method public cancelGoToTopMouseClick(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0xc

    if-eq v0, p1, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v1

    iget v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    invoke-direct {p0, v1, v2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isValidGoToButton(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public checkFastScroll(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0xd3

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->updateStateOnEventChange(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->checkFastScrollLayer(FF)I

    move-result v2

    iput v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    sget-boolean v2, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkFastScroll  mSelectedLayer : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event.getX() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " event.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TinFastScrollManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd4

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd6

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->updateStateOnEventChange(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v3}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v4

    iget v5, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    invoke-direct {p0, v4, v5}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isValidGoToButton(II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isTalkBackRunning()Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    invoke-interface {v3, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->handleGoToButton(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollBar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->getScrollbarVisibility()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->handleScrollbarScroller(Landroid/view/MotionEvent;)V

    return v1

    :cond_7
    return v2
.end method

.method public abstract checkFastScrollLayer(FF)I
.end method

.method public commitXPositionRatio()V
    .locals 6

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mPosition:F

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mViewPortWidthPix:F

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mPosition:F

    sub-float v4, v1, v2

    cmpl-float v4, v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ltz v4, :cond_0

    add-float/2addr v1, v2

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    move v0, v5

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->getCommitXPositionRatio()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "fast_scroll_position_x"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    const-string v0, "8550"

    if-nez p0, :cond_2

    const-string p0, "Default"

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "Moved"

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public didUpdateLayerAppearance(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isValidGoToButton(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->didUpdateLayerAppearance(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollBar(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->didUpdateLayerAppearance(Z)V

    :cond_2
    return-void
.end method

.method public disableForAiFeatures()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isAiFeaturesShowing()Z

    move-result p0

    return p0
.end method

.method public getContentOffsetX()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mWebContentsXOffset:I

    return p0
.end method

.method public getDragOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDragOn:Z

    return p0
.end method

.method public getScrollItemsList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    return-object p0
.end method

.method public getScrollbarScroller()Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    return-object p0
.end method

.method public hideFastScrollerImmediately()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerImmediately()V

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    const-string v1, "TinFastScrollManager"

    const-string v2, "hideFastScrollerImmediately"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->hideGoToButtonImmediately()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract isAiFeaturesShowing()Z
.end method

.method public isBothGoToButtonsVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isFastScrollOff()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isFastScrollOff()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isScrollInProgress()Z
.end method

.method public isScrollbarScrollerEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyFastScrollLayerState(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isValidGoToButton(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setGoToButtonLayerState(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollBar(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setScrollbarLayerState(Z)V

    :cond_2
    return-void
.end method

.method public abstract notifyFastScrollerEnabled(Z)V
.end method

.method public onScrollBegin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->onScrollBegin()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->onScrollBegin()V

    :cond_1
    return-void
.end method

.method public onScrollEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->onScrollEnded()V

    :cond_0
    return-void
.end method

.method public resetDragGesture()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->resetDragGesture()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract restoreTopControlsState()V
.end method

.method public runDragGestureVibrate()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x6c

    invoke-interface {p0, v0}, Lcom/sec/terrace/TerraceContentViewCallback;->runHapticFeedbackEffect(I)V

    return-void
.end method

.method public abstract runScrollbarVibrate()V
.end method

.method public abstract scrollBegin()V
.end method

.method public abstract scrollBy(F)V
.end method

.method public abstract scrollEnd()V
.end method

.method public setAlphaToGotoBitmap(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setAlphaToGotoBitmap(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDisplaySize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {v1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v3, v1, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setDisplaySize(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setDisplaySize(II)V

    :cond_1
    return-void
.end method

.method public setDragOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDragOn:Z

    return-void
.end method

.method public setFastScrollBitmap(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "setFastScrollBitmap  layerType : "

    const-string v1, "TinFastScrollManager"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isValidGoToButton(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setGoToButtonBitmap()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastscrollBitmapPosition()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollBar(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setScrollbarScrollerBitmap()V

    :cond_3
    return-void
.end method

.method public abstract setFastScrollBitmap(ILandroid/graphics/Bitmap;)V
.end method

.method public setFastScrollByKeyEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setIsTouching(Z)V

    invoke-interface {v1, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->setIsKeyEvent(Z)V

    if-nez p1, :cond_0

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->resetGoToButtonHidingTimer()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetMainFrameScroll()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setIsTouching(Z)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setIsKeyEvent(Z)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetScrollbarScrollerHidingTimer()V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mFastScrollHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mFastScrollHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mFastScrollHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public setGoToButtonBitmap(ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public abstract setGotoPosition(F)V
.end method

.method public setIsLoading(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setIsLoading(Z)V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mPosition:F

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setGotoPosition(F)V

    return-void
.end method

.method public setScrollbarScroller(Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    return-void
.end method

.method public setSelectedLayer(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mWebContentsXOffset:I

    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mDragOn:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastscrollBitmapPosition()V

    :cond_0
    return-void
.end method

.method public shouldIgnoreGoToBottom()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreChild(I)Z

    move-result p0

    return p0
.end method

.method public shouldIgnoreGoToTop()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreChild(I)Z

    move-result p0

    return p0
.end method

.method public shouldSendSingleTapEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mSelectedLayer:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->scrollbarScrollStarted()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateFrameInfo(FFFFFF)V
    .locals 7

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mViewPortWidthPix:F

    mul-float/2addr p6, p2

    invoke-static {v0, p6}, Lorg/chromium/base/MathUtils;->areFloatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput p6, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mViewPortWidthPix:F

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastscrollBitmapPosition()V

    :cond_0
    iget-object p6, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollItemsList:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1, p1, p3}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->updateAppearance(FF)V

    :cond_1
    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->updateFrameInfo(FFFFF)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->mScrollbarScroller:Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->updateFrameInfo(FFFF)V

    :cond_3
    cmpl-float p1, p5, p4

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->hideFastScrollerImmediately()V

    :cond_4
    return-void
.end method

.method public abstract updateLayerAppearance(IZ)V
.end method
