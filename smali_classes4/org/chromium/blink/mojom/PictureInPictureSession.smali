.class public interface abstract Lorg/chromium/blink/mojom/PictureInPictureSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PictureInPictureSession$Stop_Response;,
        Lorg/chromium/blink/mojom/PictureInPictureSession$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PictureInPictureSession;",
            "Lorg/chromium/blink/mojom/PictureInPictureSession$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/PictureInPictureSession;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract stop(Lorg/chromium/blink/mojom/PictureInPictureSession$Stop_Response;)V
.end method

.method public abstract update(ILorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/viz/mojom/SurfaceId;Lorg/chromium/gfx/mojom/Size;Z)V
.end method

.method public abstract updateMediaPosition(Lorg/chromium/media_session/mojom/MediaPosition;)V
.end method
