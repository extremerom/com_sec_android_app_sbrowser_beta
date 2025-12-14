.class public interface abstract Lorg/chromium/mojom/samsung/payments/SamsungPayClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/mojom/samsung/payments/SamsungPayClient;",
            "Lorg/chromium/mojom/samsung/payments/SamsungPayClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onAbort(Z)V
.end method

.method public abstract onCanMakePayment(Ljava/lang/String;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onMakePaymentRequestResponse(Ljava/lang/String;)V
.end method
