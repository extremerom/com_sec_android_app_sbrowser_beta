.class Lorg/chromium/payments/mojom/DigitalGoods_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsConsumeResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsConsumeResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsConsumeResponseParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsConsumeParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchaseHistoryResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchaseHistoryResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchaseHistoryResponseParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchaseHistoryParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchasesResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchasesResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchasesResponseParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsListPurchasesParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsGetDetailsResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsGetDetailsResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsGetDetailsResponseParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$DigitalGoodsGetDetailsParams;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$Stub;,
        Lorg/chromium/payments/mojom/DigitalGoods_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/payments/mojom/DigitalGoods_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/DigitalGoods_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/DigitalGoods_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
