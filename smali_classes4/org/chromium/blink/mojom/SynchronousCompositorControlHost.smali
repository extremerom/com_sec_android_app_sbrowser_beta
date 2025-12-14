.class public interface abstract Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SynchronousCompositorControlHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;",
            "Lorg/chromium/blink/mojom/SynchronousCompositorControlHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract beginFrameResponse(Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;)V
.end method

.method public abstract returnFrame(IILorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;)V
.end method
