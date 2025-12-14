.class public interface abstract Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;",
            "Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract canMakePayment()V
.end method

.method public abstract close()V
.end method

.method public abstract complete(I)V
.end method

.method public abstract disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V
.end method

.method public abstract hasEnrolledInstrument()V
.end method

.method public abstract initAndValidate(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;[Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
.end method

.method public abstract onPaymentDetailsNotUpdated()V
.end method

.method public abstract retry(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
.end method

.method public abstract show(Z)V
.end method

.method public abstract updateWith(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
.end method
