.class public interface abstract Lorg/chromium/media/mojom/MediaDrmStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaDrmStorage$RemovePersistentSession_Response;,
        Lorg/chromium/media/mojom/MediaDrmStorage$LoadPersistentSession_Response;,
        Lorg/chromium/media/mojom/MediaDrmStorage$SavePersistentSession_Response;,
        Lorg/chromium/media/mojom/MediaDrmStorage$OnProvisioned_Response;,
        Lorg/chromium/media/mojom/MediaDrmStorage$Initialize_Response;,
        Lorg/chromium/media/mojom/MediaDrmStorage$Proxy;
    }
.end annotation


# virtual methods
.method public abstract initialize(Lorg/chromium/media/mojom/MediaDrmStorage$Initialize_Response;)V
.end method

.method public abstract loadPersistentSession(Ljava/lang/String;Lorg/chromium/media/mojom/MediaDrmStorage$LoadPersistentSession_Response;)V
.end method

.method public abstract onProvisioned(Lorg/chromium/media/mojom/MediaDrmStorage$OnProvisioned_Response;)V
.end method

.method public abstract removePersistentSession(Ljava/lang/String;Lorg/chromium/media/mojom/MediaDrmStorage$RemovePersistentSession_Response;)V
.end method

.method public abstract savePersistentSession(Ljava/lang/String;Lorg/chromium/media/mojom/SessionData;Lorg/chromium/media/mojom/MediaDrmStorage$SavePersistentSession_Response;)V
.end method
