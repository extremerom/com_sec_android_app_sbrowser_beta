.class public interface abstract Lorg/chromium/media/mojom/VideoCaptureObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoCaptureObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/VideoCaptureObserver;",
            "Lorg/chromium/media/mojom/VideoCaptureObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/VideoCaptureObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onBufferDestroyed(I)V
.end method

.method public abstract onBufferReady(Lorg/chromium/media/mojom/ReadyBuffer;)V
.end method

.method public abstract onFrameDropped(I)V
.end method

.method public abstract onNewBuffer(ILorg/chromium/media/mojom/VideoBufferHandle;)V
.end method

.method public abstract onNewSubCaptureTargetVersion(I)V
.end method

.method public abstract onStateChanged(Lorg/chromium/media/mojom/VideoCaptureResult;)V
.end method
