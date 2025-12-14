.class public interface abstract Lorg/chromium/media/mojom/AndroidOverlayClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AndroidOverlayClient$OnSynchronouslyDestroyed_Response;,
        Lorg/chromium/media/mojom/AndroidOverlayClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AndroidOverlayClient;",
            "Lorg/chromium/media/mojom/AndroidOverlayClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/AndroidOverlayClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/AndroidOverlayClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onDestroyed()V
.end method

.method public abstract onPowerEfficientState(Z)V
.end method

.method public abstract onSurfaceReady(J)V
.end method

.method public abstract onSynchronouslyDestroyed(Lorg/chromium/media/mojom/AndroidOverlayClient$OnSynchronouslyDestroyed_Response;)V
.end method
