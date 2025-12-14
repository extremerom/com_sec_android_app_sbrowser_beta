.class public interface abstract Lorg/chromium/payments/mojom/PaymentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentManager$EnableDelegations_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$ClearPaymentInstruments_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$SetPaymentInstrument_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$HasPaymentInstrument_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$KeysOfPaymentInstruments_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$GetPaymentInstrument_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$DeletePaymentInstrument_Response;,
        Lorg/chromium/payments/mojom/PaymentManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clearPaymentInstruments(Lorg/chromium/payments/mojom/PaymentManager$ClearPaymentInstruments_Response;)V
.end method

.method public abstract deletePaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$DeletePaymentInstrument_Response;)V
.end method

.method public abstract enableDelegations([ILorg/chromium/payments/mojom/PaymentManager$EnableDelegations_Response;)V
.end method

.method public abstract getPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$GetPaymentInstrument_Response;)V
.end method

.method public abstract hasPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentManager$HasPaymentInstrument_Response;)V
.end method

.method public abstract init(Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
.end method

.method public abstract keysOfPaymentInstruments(Lorg/chromium/payments/mojom/PaymentManager$KeysOfPaymentInstruments_Response;)V
.end method

.method public abstract setPaymentInstrument(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentInstrument;Lorg/chromium/payments/mojom/PaymentManager$SetPaymentInstrument_Response;)V
.end method

.method public abstract setUserHint(Ljava/lang/String;)V
.end method
