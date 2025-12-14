.class public interface abstract Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$GetRegistrations_Response;,
        Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Unregister_Response;,
        Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Register_Response;,
        Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getRegistrations(JLorg/chromium/blink/mojom/PeriodicBackgroundSyncService$GetRegistrations_Response;)V
.end method

.method public abstract register(Lorg/chromium/blink/mojom/SyncRegistrationOptions;JLorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Register_Response;)V
.end method

.method public abstract unregister(JLjava/lang/String;Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Unregister_Response;)V
.end method
