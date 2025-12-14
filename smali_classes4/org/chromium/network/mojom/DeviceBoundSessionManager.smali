.class public interface abstract Lorg/chromium/network/mojom/DeviceBoundSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/DeviceBoundSessionManager$DeleteAllSessions_Response;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager$GetAllSessions_Response;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addObserver(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;)V
.end method

.method public abstract deleteAllSessions(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/DeviceBoundSessionManager$DeleteAllSessions_Response;)V
.end method

.method public abstract deleteSession(Lorg/chromium/network/mojom/DeviceBoundSessionKey;)V
.end method

.method public abstract getAllSessions(Lorg/chromium/network/mojom/DeviceBoundSessionManager$GetAllSessions_Response;)V
.end method
