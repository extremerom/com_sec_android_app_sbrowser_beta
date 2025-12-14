.class public interface abstract Lorg/chromium/media_session/mojom/MediaControllerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaControllerManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createActiveMediaController(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media_session/mojom/MediaController;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createMediaControllerForSession(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media_session/mojom/MediaController;",
            ">;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            ")V"
        }
    .end annotation
.end method

.method public abstract suspendAllSessions()V
.end method
