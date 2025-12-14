.class public interface abstract Lorg/chromium/payments/mojom/PaymentRequestClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentRequestClient$AllowConnectToSource_Response;,
        Lorg/chromium/payments/mojom/PaymentRequestClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentRequestClient;",
            "Lorg/chromium/payments/mojom/PaymentRequestClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/payments/mojom/PaymentRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequestClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract allowConnectToSource(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;ZLorg/chromium/payments/mojom/PaymentRequestClient$AllowConnectToSource_Response;)V
.end method

.method public abstract onAbort(Z)V
.end method

.method public abstract onCanMakePayment(I)V
.end method

.method public abstract onComplete()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onHasEnrolledInstrument(I)V
.end method

.method public abstract onPayerDetailChange(Lorg/chromium/payments/mojom/PayerDetail;)V
.end method

.method public abstract onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPaymentResponse(Lorg/chromium/payments/mojom/PaymentResponse;)V
.end method

.method public abstract onShippingAddressChange(Lorg/chromium/payments/mojom/PaymentAddress;)V
.end method

.method public abstract onShippingOptionChange(Ljava/lang/String;)V
.end method

.method public abstract warnNoFavicon()V
.end method
