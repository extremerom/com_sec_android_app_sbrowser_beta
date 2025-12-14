.class public interface abstract Lorg/chromium/payments/mojom/DigitalGoods;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;,
        Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;,
        Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;,
        Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;,
        Lorg/chromium/payments/mojom/DigitalGoods$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/DigitalGoods;",
            "Lorg/chromium/payments/mojom/DigitalGoods$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/payments/mojom/DigitalGoods_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/DigitalGoods;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract consume(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
.end method

.method public abstract getDetails([Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
.end method

.method public abstract listPurchaseHistory(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
.end method

.method public abstract listPurchases(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
.end method
