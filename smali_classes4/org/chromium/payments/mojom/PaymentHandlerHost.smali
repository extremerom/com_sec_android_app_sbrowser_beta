.class public interface abstract Lorg/chromium/payments/mojom/PaymentHandlerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingAddress_Response;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingOption_Response;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangePaymentMethod_Response;,
        Lorg/chromium/payments/mojom/PaymentHandlerHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/PaymentHandlerHost;",
            "Lorg/chromium/payments/mojom/PaymentHandlerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/payments/mojom/PaymentHandlerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/PaymentHandlerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract changePaymentMethod(Lorg/chromium/payments/mojom/PaymentHandlerMethodData;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangePaymentMethod_Response;)V
.end method

.method public abstract changeShippingAddress(Lorg/chromium/payments/mojom/PaymentAddress;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingAddress_Response;)V
.end method

.method public abstract changeShippingOption(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentHandlerHost$ChangeShippingOption_Response;)V
.end method
