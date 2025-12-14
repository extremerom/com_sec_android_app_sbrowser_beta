.class public interface abstract Lorg/chromium/blink/mojom/ReportingServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ReportingServiceProxy$Proxy;
    }
.end annotation


# virtual methods
.method public abstract queueCspHashReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queueCspViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SII)V
.end method

.method public abstract queueDeprecationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract queueDocumentPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract queueInterventionReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract queuePermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract queuePotentialPermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method
