.class public interface abstract Lorg/chromium/blink/mojom/OneShotBackgroundSyncService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService$GetRegistrations_Response;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService$Register_Response;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract didResolveRegistration(Lorg/chromium/blink/mojom/BackgroundSyncRegistrationInfo;)V
.end method

.method public abstract getRegistrations(JLorg/chromium/blink/mojom/OneShotBackgroundSyncService$GetRegistrations_Response;)V
.end method

.method public abstract register(Lorg/chromium/blink/mojom/SyncRegistrationOptions;JLorg/chromium/blink/mojom/OneShotBackgroundSyncService$Register_Response;)V
.end method
