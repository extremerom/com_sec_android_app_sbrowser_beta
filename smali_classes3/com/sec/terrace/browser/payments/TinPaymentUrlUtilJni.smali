.class Lcom/sec/terrace/browser/payments/TinPaymentUrlUtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtilJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MzSQ3dlV(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isValidUrlBasedPaymentMethodIdentifier(Lorg/chromium/url/GURL;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M_yDuz0c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
