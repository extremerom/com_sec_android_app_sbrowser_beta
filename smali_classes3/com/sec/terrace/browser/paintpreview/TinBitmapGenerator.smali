.class public Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;,
        Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$EntryStatus;
    }
.end annotation


# instance fields
.field private mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

.field private mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

.field private mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

.field private mCompositorFactory:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;

.field private mScaleFactor:F

.field private mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace$BitmapRequestCallback;Lcom/sec/terrace/browser/paintpreview/BoundsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    iput-object p2, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositorFactory:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->onBitmapGenerated(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->onBitmapGenerationError()V

    return-void
.end method

.method private createEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->width()I

    move-result v0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->height()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private onBitmapGenerated(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->destroy()V

    return-void
.end method

.method private onBitmapGenerationError()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->createEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->destroy()V

    return-void
.end method

.method private onCaptureResult(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->updateGeneratorStatus(I)V

    :cond_0
    return-void
.end method

.method private updateGeneratorStatus(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$EntryStatus;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->createEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->destroy()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->getClipRect()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/terrace/browser/paintpreview/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/terrace/browser/paintpreview/a;-><init>(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->compositeBitmap(Landroid/graphics/Rect;Ljava/lang/Runnable;Lorg/chromium/base/Callback;)I

    return-void
.end method


# virtual methods
.method public captureTab(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceFactory;->getServiceInstance()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->setCaptureProcessor(Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->getPageScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mScaleFactor:F

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->captureTab(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method public compositeBitmap(Landroid/graphics/Rect;Ljava/lang/Runnable;Lorg/chromium/base/Callback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Runnable;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    iget p0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mScaleFactor:F

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->requestBitmap(Landroid/graphics/Rect;FLjava/lang/Runnable;Lorg/chromium/base/Callback;)I

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    :cond_0
    iput-object v1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->setCaptureProcessor(Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mBoundsManager:Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    return-void
.end method

.method public onCompositorResult(I)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->updateGeneratorStatus(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->updateGeneratorStatus(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->updateGeneratorStatus(I)V

    :goto_1
    return-void
.end method

.method public processCapturedTab(JI)V
    .locals 8

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositorFactory:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;

    invoke-static {}, Lorg/chromium/url/GURL;->emptyGURL()Lorg/chromium/url/GURL;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    new-instance v7, Lcom/sec/terrace/browser/paintpreview/a;

    const/4 p3, 0x0

    invoke-direct {v7, p0, p3}, Lcom/sec/terrace/browser/paintpreview/a;-><init>(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;I)V

    const-string v4, "paint_preview_capture_dir"

    move-wide v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;->create(Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;Ljava/lang/String;JLorg/chromium/base/Callback;)Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mCompositor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->mTabService:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->releaseNativeCaptureResultPtr(J)V

    invoke-direct {p0, p3}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->onCaptureResult(I)V

    :goto_0
    return-void
.end method
