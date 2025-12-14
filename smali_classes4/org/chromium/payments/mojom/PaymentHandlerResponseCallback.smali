.class public interface abstract Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;",
            "Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onResponseForAbortPayment(Z)V
.end method

.method public abstract onResponseForCanMakePayment(Lorg/chromium/payments/mojom/CanMakePaymentResponse;)V
.end method

.method public abstract onResponseForPaymentRequest(Lorg/chromium/payments/mojom/PaymentHandlerResponse;)V
.end method
