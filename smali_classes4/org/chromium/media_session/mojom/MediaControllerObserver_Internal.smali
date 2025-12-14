.class Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$MediaControllerObserverMediaSessionPositionChangedParams;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$MediaControllerObserverMediaSessionChangedParams;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$MediaControllerObserverMediaSessionActionsChangedParams;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$MediaControllerObserverMediaSessionMetadataChangedParams;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$MediaControllerObserverMediaSessionInfoChangedParams;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$Stub;,
        Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/MediaControllerObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
