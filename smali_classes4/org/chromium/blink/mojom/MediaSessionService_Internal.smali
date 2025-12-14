.class Lorg/chromium/blink/mojom/MediaSessionService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceDisableActionParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceEnableActionParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetCameraStateParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetMicrophoneStateParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetMetadataParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetPositionStateParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetPlaybackStateParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$MediaSessionServiceSetClientParams;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$Stub;,
        Lorg/chromium/blink/mojom/MediaSessionService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/MediaSessionService;",
            "Lorg/chromium/blink/mojom/MediaSessionService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/MediaSessionService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaSessionService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/MediaSessionService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
