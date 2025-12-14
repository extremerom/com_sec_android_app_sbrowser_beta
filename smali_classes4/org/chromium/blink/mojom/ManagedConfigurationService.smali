.class public interface abstract Lorg/chromium/blink/mojom/ManagedConfigurationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ManagedConfigurationService$GetManagedConfiguration_Response;,
        Lorg/chromium/blink/mojom/ManagedConfigurationService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getManagedConfiguration([Ljava/lang/String;Lorg/chromium/blink/mojom/ManagedConfigurationService$GetManagedConfiguration_Response;)V
.end method

.method public abstract subscribeToManagedConfiguration(Lorg/chromium/blink/mojom/ManagedConfigurationObserver;)V
.end method
