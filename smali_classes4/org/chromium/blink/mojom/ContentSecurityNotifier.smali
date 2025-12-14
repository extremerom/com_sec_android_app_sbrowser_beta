.class public interface abstract Lorg/chromium/blink/mojom/ContentSecurityNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ContentSecurityNotifier$Proxy;
    }
.end annotation


# virtual methods
.method public abstract notifyContentWithCertificateErrorsDisplayed()V
.end method

.method public abstract notifyContentWithCertificateErrorsRan()V
.end method

.method public abstract notifyInsecureContentRan(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;)V
.end method
