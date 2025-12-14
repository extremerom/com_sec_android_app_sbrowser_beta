.class public interface abstract Lorg/chromium/payments/mojom/SecurePaymentConfirmationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$MakePaymentCredential_Response;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$StorePaymentCredential_Response;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$IsSecurePaymentConfirmationAvailable_Response;,
        Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract isSecurePaymentConfirmationAvailable(Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$IsSecurePaymentConfirmationAvailable_Response;)V
.end method

.method public abstract makePaymentCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/payments/mojom/SecurePaymentConfirmationService$MakePaymentCredential_Response;)V
.end method

.method public abstract storePaymentCredential([BLjava/lang/String;[BLorg/chromium/payments/mojom/SecurePaymentConfirmationService$StorePaymentCredential_Response;)V
.end method
