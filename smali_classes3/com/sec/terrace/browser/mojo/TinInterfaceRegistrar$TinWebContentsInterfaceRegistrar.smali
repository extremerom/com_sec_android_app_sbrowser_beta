.class Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;
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
    name = "TinWebContentsInterfaceRegistrar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content_public/browser/InterfaceRegistrar<",
        "Lorg/chromium/content_public/browser/WebContents;",
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

    invoke-direct {p0}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;->registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    sget-object p0, Lorg/chromium/webshare/mojom/ShareService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance p2, Lcom/sec/terrace/browser/webshare/TinShareServiceImplementationFactory;

    invoke-direct {p2}, Lcom/sec/terrace/browser/webshare/TinShareServiceImplementationFactory;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    return-void
.end method
