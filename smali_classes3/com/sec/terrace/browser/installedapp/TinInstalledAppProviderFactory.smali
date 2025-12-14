.class public Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/installedapp/mojom/InstalledAppProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;

    return-void
.end method


# virtual methods
.method public createImpl()Lorg/chromium/installedapp/mojom/InstalledAppProvider;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;-><init>(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;->createImpl()Lorg/chromium/installedapp/mojom/InstalledAppProvider;

    move-result-object p0

    return-object p0
.end method

.method public getFrameUrlDelegate()Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;

    return-object p0
.end method
