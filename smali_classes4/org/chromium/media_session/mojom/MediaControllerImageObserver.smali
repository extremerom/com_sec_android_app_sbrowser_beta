.class public interface abstract Lorg/chromium/media_session/mojom/MediaControllerImageObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaControllerImageObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaControllerImageObserver;",
            "Lorg/chromium/media_session/mojom/MediaControllerImageObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract mediaControllerChapterImageChanged(ILorg/chromium/media_session/mojom/MediaImageBitmap;)V
.end method

.method public abstract mediaControllerImageChanged(ILorg/chromium/media_session/mojom/MediaImageBitmap;)V
.end method
