.class public interface abstract Lorg/chromium/media_session/mojom/AudioFocusObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/AudioFocusObserver$Proxy;
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

    sget-object v0, Lorg/chromium/media_session/mojom/AudioFocusObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media_session/mojom/AudioFocusObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onFocusGained(Lorg/chromium/media_session/mojom/AudioFocusRequestState;)V
.end method

.method public abstract onFocusLost(Lorg/chromium/media_session/mojom/AudioFocusRequestState;)V
.end method

.method public abstract onRequestIdReleased(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method
