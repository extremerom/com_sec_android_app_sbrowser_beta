.class Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$DigitalGoodsFactoryCreateDigitalGoodsResponseParamsProxyToResponder;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$DigitalGoodsFactoryCreateDigitalGoodsResponseParamsForwardToCallback;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$DigitalGoodsFactoryCreateDigitalGoodsResponseParams;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$DigitalGoodsFactoryCreateDigitalGoodsParams;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$Stub;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/payments/mojom/DigitalGoodsFactory;",
            "Lorg/chromium/payments/mojom/DigitalGoodsFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
