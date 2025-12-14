.class public interface abstract Lorg/chromium/media_session/mojom/MediaSessionObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaSessionObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaSessionObserver;",
            "Lorg/chromium/media_session/mojom/MediaSessionObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract mediaSessionActionsChanged([I)V
.end method

.method public abstract mediaSessionImagesChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/chromium/media_session/mojom/MediaImage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mediaSessionInfoChanged(Lorg/chromium/media_session/mojom/MediaSessionInfo;)V
.end method

.method public abstract mediaSessionMetadataChanged(Lorg/chromium/media_session/mojom/MediaMetadata;)V
.end method

.method public abstract mediaSessionPositionChanged(Lorg/chromium/media_session/mojom/MediaPosition;)V
.end method
