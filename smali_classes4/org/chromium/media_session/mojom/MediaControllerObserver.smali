.class public interface abstract Lorg/chromium/media_session/mojom/MediaControllerObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaControllerObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaControllerObserver;",
            "Lorg/chromium/media_session/mojom/MediaControllerObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media_session/mojom/MediaControllerObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract mediaSessionActionsChanged([I)V
.end method

.method public abstract mediaSessionChanged(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract mediaSessionInfoChanged(Lorg/chromium/media_session/mojom/MediaSessionInfo;)V
.end method

.method public abstract mediaSessionMetadataChanged(Lorg/chromium/media_session/mojom/MediaMetadata;)V
.end method

.method public abstract mediaSessionPositionChanged(Lorg/chromium/media_session/mojom/MediaPosition;)V
.end method
