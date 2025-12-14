.class public interface abstract Lorg/chromium/payments/mojom/PaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentRequest$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentRequest;",
            "Lorg/chromium/payments/mojom/PaymentRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/payments/mojom/PaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract canMakePayment()V
.end method

.method public abstract complete(I)V
.end method

.method public abstract hasEnrolledInstrument()V
.end method

.method public abstract init(Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;)V
.end method

.method public abstract onPaymentDetailsNotUpdated()V
.end method

.method public abstract retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
.end method

.method public abstract show(ZZ)V
.end method

.method public abstract updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
.end method
