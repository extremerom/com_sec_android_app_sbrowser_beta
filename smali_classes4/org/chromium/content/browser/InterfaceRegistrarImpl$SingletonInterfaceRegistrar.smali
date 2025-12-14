.class Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/InterfaceRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/InterfaceRegistrarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonInterfaceRegistrar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content_public/browser/InterfaceRegistrar<",
        "Ljava/lang/Void;",
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

    invoke-direct {p0}, Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;->registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Void;)V

    return-void
.end method

.method public registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Void;)V
    .locals 0

    sget-object p0, Lorg/chromium/media/mojom/AndroidOverlayProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance p2, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl$Factory;

    invoke-direct {p2}, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl$Factory;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p0, Lorg/chromium/blink/mojom/AndroidFontLookup;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance p2, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;

    invoke-direct {p2}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    return-void
.end method
