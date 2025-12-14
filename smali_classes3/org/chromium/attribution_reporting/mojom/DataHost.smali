.class public interface abstract Lorg/chromium/attribution_reporting/mojom/DataHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/attribution_reporting/mojom/DataHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract osSourceDataAvailable(Lorg/chromium/attribution_reporting/mojom/OsRegistration;Z)V
.end method

.method public abstract osTriggerDataAvailable(Lorg/chromium/attribution_reporting/mojom/OsRegistration;Z)V
.end method

.method public abstract reportRegistrationHeaderError(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/RegistrationHeaderError;)V
.end method

.method public abstract sourceDataAvailable(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/SourceRegistration;Z)V
.end method

.method public abstract triggerDataAvailable(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;Z)V
.end method
