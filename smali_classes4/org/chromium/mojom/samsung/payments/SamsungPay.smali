.class public interface abstract Lorg/chromium/mojom/samsung/payments/SamsungPay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/samsung/payments/SamsungPay$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/mojom/samsung/payments/SamsungPay;",
            "Lorg/chromium/mojom/samsung/payments/SamsungPay$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/mojom/samsung/payments/SamsungPay_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/samsung/payments/SamsungPay;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract canMakePayment(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract makePaymentRequest(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setClient(Lorg/chromium/mojom/samsung/payments/SamsungPayClient;)V
.end method
