.class public Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtilJni;->get()Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;->isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z

    move-result p0

    return p0
.end method

.method public static isValidUrlBasedPaymentMethodIdentifier(Lorg/chromium/url/GURL;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtilJni;->get()Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;->isValidUrlBasedPaymentMethodIdentifier(Lorg/chromium/url/GURL;)Z

    move-result p0

    return p0
.end method
