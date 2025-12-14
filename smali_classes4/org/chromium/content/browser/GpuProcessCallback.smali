.class Lorg/chromium/content/browser/GpuProcessCallback;
.super Lorg/chromium/content/common/IGpuProcessCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/GpuProcessCallback$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/common/IGpuProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardInputTransferToken(ILorg/chromium/content/common/InputTransferTokenWrapper;)V
    .locals 0

    invoke-virtual {p2}, Lorg/chromium/content/common/InputTransferTokenWrapper;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/content/browser/input/InputTokenForwarderManager;->onTokenReceived(ILandroid/window/InputTransferToken;)V

    return-void
.end method

.method public forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/GpuProcessCallbackJni;->get()Lorg/chromium/content/browser/GpuProcessCallback$Natives;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/chromium/content/browser/GpuProcessCallback$Natives;->completeScopedSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V

    return-void
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/GpuProcessCallbackJni;->get()Lorg/chromium/content/browser/GpuProcessCallback$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content/browser/GpuProcessCallback$Natives;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p0

    return-object p0
.end method
