.class Lorg/chromium/media_session/mojom/MediaControllerManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$MediaControllerManagerSuspendAllSessionsParams;,
        Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$MediaControllerManagerCreateActiveMediaControllerParams;,
        Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$MediaControllerManagerCreateMediaControllerForSessionParams;,
        Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$Stub;,
        Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaControllerManager;",
            "Lorg/chromium/media_session/mojom/MediaControllerManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaControllerManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/MediaControllerManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
