.class Lorg/chromium/viz/mojom/Gpu_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/Gpu_Internal$GpuCreateVideoEncodeAcceleratorProviderParams;,
        Lorg/chromium/viz/mojom/Gpu_Internal$GpuEstablishGpuChannelResponseParamsProxyToResponder;,
        Lorg/chromium/viz/mojom/Gpu_Internal$GpuEstablishGpuChannelResponseParamsForwardToCallback;,
        Lorg/chromium/viz/mojom/Gpu_Internal$GpuEstablishGpuChannelResponseParams;,
        Lorg/chromium/viz/mojom/Gpu_Internal$GpuEstablishGpuChannelParams;,
        Lorg/chromium/viz/mojom/Gpu_Internal$Stub;,
        Lorg/chromium/viz/mojom/Gpu_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/Gpu;",
            "Lorg/chromium/viz/mojom/Gpu$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/Gpu_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/Gpu_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/Gpu_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
