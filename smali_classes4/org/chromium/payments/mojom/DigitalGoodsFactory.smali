.class public interface abstract Lorg/chromium/payments/mojom/DigitalGoodsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;,
        Lorg/chromium/payments/mojom/DigitalGoodsFactory$Proxy;
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

    sget-object v0, Lorg/chromium/payments/mojom/DigitalGoodsFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/payments/mojom/DigitalGoodsFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createDigitalGoods(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;)V
.end method
