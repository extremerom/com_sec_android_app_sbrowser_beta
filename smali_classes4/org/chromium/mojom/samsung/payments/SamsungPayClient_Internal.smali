.class Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$SamsungPayClientOnAbortParams;,
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$SamsungPayClientOnErrorParams;,
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$SamsungPayClientOnMakePaymentRequestResponseParams;,
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$SamsungPayClientOnCanMakePaymentParams;,
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$Stub;,
        Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/samsung/payments/SamsungPayClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
