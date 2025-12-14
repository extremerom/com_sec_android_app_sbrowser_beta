.class public Lcom/sec/terrace/browser/webshare/TinShareServiceImplementationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/webshare/mojom/ShareService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webshare/TinShareServiceImplementationFactory;->createImpl()Lorg/chromium/webshare/mojom/ShareService;

    move-result-object p0

    return-object p0
.end method

.method public createImpl()Lorg/chromium/webshare/mojom/ShareService;
    .locals 0

    new-instance p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;

    invoke-direct {p0}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;-><init>()V

    return-object p0
.end method
