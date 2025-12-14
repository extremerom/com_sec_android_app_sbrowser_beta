.class public interface abstract Lorg/chromium/media_session/mojom/AudioFocusRequestClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/AudioFocusRequestClient$RequestAudioFocus_Response;,
        Lorg/chromium/media_session/mojom/AudioFocusRequestClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract mediaSessionInfoChanged(Lorg/chromium/media_session/mojom/MediaSessionInfo;)V
.end method

.method public abstract requestAudioFocus(Lorg/chromium/media_session/mojom/MediaSessionInfo;ILorg/chromium/media_session/mojom/AudioFocusRequestClient$RequestAudioFocus_Response;)V
.end method
