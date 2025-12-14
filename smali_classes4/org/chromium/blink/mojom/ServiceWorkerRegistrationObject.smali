.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObject$Proxy;
    }
.end annotation


# virtual methods
.method public abstract setServiceWorkerObjects(Lorg/chromium/blink/mojom/ChangedServiceWorkerObjectsMask;Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;)V
.end method

.method public abstract setUpdateViaCache(I)V
.end method

.method public abstract updateFound()V
.end method
