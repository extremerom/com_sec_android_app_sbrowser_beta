.class public interface abstract Lorg/chromium/ip_protection/mojom/CoreControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ip_protection/mojom/CoreControl$IsIpProtectionEnabledForTesting_Response;,
        Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;,
        Lorg/chromium/ip_protection/mojom/CoreControl$Proxy;
    }
.end annotation


# virtual methods
.method public abstract authTokensMayBeAvailable()V
.end method

.method public abstract isIpProtectionEnabledForTesting(Lorg/chromium/ip_protection/mojom/CoreControl$IsIpProtectionEnabledForTesting_Response;)V
.end method

.method public abstract setIpProtectionEnabled(Z)V
.end method

.method public abstract verifyIpProtectionCoreHostForTesting(Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;)V
.end method
