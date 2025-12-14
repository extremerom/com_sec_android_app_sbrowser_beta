.class public Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;
.super Lorg/chromium/content/browser/GestureListenerManagerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl$UserDataFactoryLazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    return-object p0
.end method


# virtual methods
.method public filterTapOrPressEvent(III)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->filterTapOrPressEvent(III)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->setLastTouch(FF)V

    :cond_0
    return p1
.end method

.method public getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object p0

    return-object p0
.end method

.method public getViewDelegateContainerView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getWebContentsImpl()Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    return-object p0
.end method

.method public updateScrollInfo(FFFFFFFFFFFZ)V
    .locals 16
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinGestureListenerManagerImpl:updateScrollInfo"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->getWebContentsImpl()Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->getViewDelegateContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, p3

    div-float/2addr v2, v0

    move/from16 v3, p6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    move/from16 v0, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-super/range {v3 .. v15}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateScrollInfo(FFFFFFFFFFFZ)V

    const-string v0, "GestureListenerManagerImpl:updateScrollInfo"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
