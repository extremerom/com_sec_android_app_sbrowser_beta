.class public interface abstract Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract notifyFetchedFont(Lorg/chromium/url/mojom/Url;Z)V
.end method

.method public abstract notifyFetchedSubresource(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/TimeDelta;I)V
.end method

.method public abstract onLcpUpdated(Lorg/chromium/mojo_base/mojom/ByteString;ZLjava/lang/Integer;)V
.end method

.method public abstract setLcpInfluencerScriptUrls([Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract setPreconnectOrigins([Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract setUnusedPreloads([Lorg/chromium/url/mojom/Url;)V
.end method
