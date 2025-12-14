.class Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$AudioOutputStreamObserverDidChangeAudibleStateParams;,
        Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$AudioOutputStreamObserverDidStopPlayingParams;,
        Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$AudioOutputStreamObserverDidStartPlayingParams;,
        Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$Stub;,
        Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AudioOutputStreamObserver;",
            "Lorg/chromium/media/mojom/AudioOutputStreamObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/AudioOutputStreamObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
