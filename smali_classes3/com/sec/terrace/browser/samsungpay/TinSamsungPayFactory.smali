.class public Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/mojom/samsung/payments/SamsungPay;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method


# virtual methods
.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;->createImpl()Lorg/chromium/mojom/samsung/payments/SamsungPay;

    move-result-object p0

    return-object p0
.end method

.method public createImpl()Lorg/chromium/mojom/samsung/payments/SamsungPay;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-object v0
.end method
