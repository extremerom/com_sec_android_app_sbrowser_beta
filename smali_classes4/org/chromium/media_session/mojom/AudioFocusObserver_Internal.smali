.class Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$AudioFocusObserverOnRequestIdReleasedParams;,
        Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$AudioFocusObserverOnFocusLostParams;,
        Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$AudioFocusObserverOnFocusGainedParams;,
        Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$Stub;,
        Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/AudioFocusObserver;",
            "Lorg/chromium/media_session/mojom/AudioFocusObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
