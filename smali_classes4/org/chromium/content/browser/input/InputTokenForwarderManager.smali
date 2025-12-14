.class public Lorg/chromium/content/browser/input/InputTokenForwarderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static onTokenReceived(ILandroid/window/InputTransferToken;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/InputTransferHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/InputTransferHandler;->setVizToken(Landroid/window/InputTransferToken;)V

    :cond_1
    return-void
.end method
