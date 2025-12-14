.class Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/InterfaceRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TinRenderFrameHostInterfaceRegistrar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content_public/browser/InterfaceRegistrar<",
        "Lorg/chromium/content_public/browser/RenderFrameHost;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;->registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method

.method public registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    sget-object p0, Lorg/chromium/payments/mojom/PaymentRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    invoke-virtual {p1, p0, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p0, Lorg/chromium/mojom/samsung/payments/SamsungPay;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayFactory;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    invoke-virtual {p1, p0, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p0, Lorg/chromium/blink/mojom/Authenticator;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    invoke-virtual {p1, p0, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p0, Lorg/chromium/installedapp/mojom/InstalledAppProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    invoke-virtual {p1, p0, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p0, Lorg/chromium/payments/mojom/DigitalGoodsFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryFactory;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryFactory;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    invoke-virtual {p1, p0, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    return-void
.end method
