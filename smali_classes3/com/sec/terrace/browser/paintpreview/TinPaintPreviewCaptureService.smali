.class public Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;,
        Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCaptureProcessor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;

.field private mNativeTinPaintPreviewCaptureService:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mNativeTinPaintPreviewCaptureService:J

    return-void
.end method


# virtual methods
.method public captureTab(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mNativeTinPaintPreviewCaptureService:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->processCaptureTabStatus(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->processCaptureTabStatus(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceJni;->get()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mNativeTinPaintPreviewCaptureService:J

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v8}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$Natives;->captureTabAndroid(JLjava/lang/String;Lorg/chromium/content_public/browser/WebContents;IIII)V

    return-void
.end method

.method public getNativeBaseService()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mNativeTinPaintPreviewCaptureService:J

    return-wide v0
.end method

.method public onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mCaptureProcessor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mNativeTinPaintPreviewCaptureService:J

    return-void
.end method

.method public processCaptureTabStatus(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mCaptureProcessor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;->processCapturedTab(JI)V

    :cond_0
    return-void
.end method

.method public processPaintPreviewResponse(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mCaptureProcessor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->releaseNativeCaptureResultPtr(J)V

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;->processCapturedTab(JI)V

    return-void
.end method

.method public releaseNativeCaptureResultPtr(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureServiceJni;->get()Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$Natives;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$Natives;->releaseCaptureResultPtr(J)V

    return-void
.end method

.method public setCaptureProcessor(Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;->mCaptureProcessor:Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService$CaptureProcessor;

    return-void
.end method
