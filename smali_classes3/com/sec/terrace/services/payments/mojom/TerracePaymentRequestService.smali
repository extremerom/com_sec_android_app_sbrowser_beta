.class public interface abstract Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getTwaPackageName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;)V
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

.method public abstract onPayerDetailChange(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V
.end method

.method public abstract onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPaymentResponse(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V
.end method

.method public abstract onShippingAddressChange(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)V
.end method

.method public abstract onShippingOptionChange(Ljava/lang/String;)V
.end method

.method public abstract warnNoFavicon()V
.end method
