.class public Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;
    }
.end annotation


# instance fields
.field private mCanDoIntuitiveHover:Z

.field private mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;

.field private mIsSPenButtonPressed:Z

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;
    .locals 2

    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    return-object p0
.end method


# virtual methods
.method public getCanDoIntuitiveHoverForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mCanDoIntuitiveHover:Z

    return p0
.end method

.method public getCurrentVisibleRect()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportWidthPixInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPixInt()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getIsSPenButtonPressedForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mIsSPenButtonPressed:Z

    return p0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;->resetSPenHoverCursor()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->getCurrentVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mCanDoIntuitiveHover:Z

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mCanDoIntuitiveHover:Z

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mIsSPenButtonPressed:Z

    goto :goto_2

    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mIsSPenButtonPressed:Z

    :goto_2
    return-void
.end method

.method public setDelegate(Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mDelegate:Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;->setSPenHoverIcon(I)V

    return-void
.end method

.method public updateSPenHoverCursor(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mCanDoIntuitiveHover:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mIsSPenButtonPressed:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->mIsSPenButtonPressed:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setSPenHoverIcon(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
