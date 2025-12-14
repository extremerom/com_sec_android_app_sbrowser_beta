.class public Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/MagnifierWrapper;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mHeightPx:I

.field private mNativeMagnifierSurfaceControl:J

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mVerticalOffsetPx:I

.field private mView:Landroid/view/View;

.field private final mViewCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

.field private final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field private mWidthPx:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mViewCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    return-void
.end method

.method private createNativeIfNeeded()V
    .locals 14

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lj9/a;->j(Landroid/view/View;)Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "cr_magnifier"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->k(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    return-void

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Landroid/widget/Magnifier;

    invoke-direct {v3, v0}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getWidth()I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWidthPx:I

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getHeight()I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mHeightPx:I

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getDefaultVerticalSourceToMagnifierOffset()I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mVerticalOffsetPx:I

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getCornerRadius()F

    move-result v9

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v10

    invoke-virtual {v3}, Landroid/widget/Magnifier;->dismiss()V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;->get()Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iget v7, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWidthPx:I

    iget v8, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mHeightPx:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->scaleByDeviceFactor(I)I

    move-result v11

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->scaleByDeviceFactor(I)I

    move-result v12

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->scaleByDeviceFactor(I)I

    move-result v13

    move-object v5, v2

    invoke-interface/range {v3 .. v13}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;->create(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Landroid/view/SurfaceControl;FIIFFIII)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    iput-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private destroyNativeIfNeeded()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;->get()Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    invoke-interface {v0, v4, v5}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;->destroy(J)V

    :cond_0
    iput-wide v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    iput-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mView:Landroid/view/View;

    return-void
.end method

.method private getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mViewCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    invoke-interface {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;->getReadbackView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mView:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mView:Landroid/view/View;

    return-object p0
.end method

.method private scaleByDeviceFactor(I)I
    .locals 0

    int-to-float p1, p1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public childLocalSurfaceIdChanged()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;->get()Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;->childLocalSurfaceIdChanged(J)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->destroyNativeIfNeeded()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mViewCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    invoke-interface {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;->getReadbackView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show(FF)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->createNativeIfNeeded()V

    iget-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWidthPx:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    iget v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mHeightPx:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    iget v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mVerticalOffsetPx:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->scaleByDeviceFactor(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWidthPx:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mHeightPx:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-static {}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;->get()Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mNativeMagnifierSurfaceControl:J

    invoke-interface {v2, v3, v4, p1, p2}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;->setReadbackOrigin(JFF)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {v1, p2}, Landroid/view/View;->getLocationInSurface([I)V

    iget-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    aget v3, p2, v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    const/4 v3, 0x1

    aget p2, p2, v3

    int-to-float p2, p2

    add-float/2addr v0, p2

    invoke-static {v1, v2, p1, v0}, Lorg/chromium/components/autofill/a;->h(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    return-void
.end method
