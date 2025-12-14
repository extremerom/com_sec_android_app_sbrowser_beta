.class public interface abstract Lorg/chromium/blink/mojom/PolicyContainerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PolicyContainerHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addContentSecurityPolicies([Lorg/chromium/network/mojom/ContentSecurityPolicy;)V
.end method

.method public abstract setReferrerPolicy(I)V
.end method
