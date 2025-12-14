.class Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;,
        Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;
    }
.end annotation


# direct methods
.method private static registerMojoInterfaces()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinWebContentsInterfaceRegistrar;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->addWebContentsRegistrar(Lorg/chromium/content_public/browser/InterfaceRegistrar;)V

    new-instance v0, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/mojo/TinInterfaceRegistrar$TinRenderFrameHostInterfaceRegistrar;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->addRenderFrameHostRegistrar(Lorg/chromium/content_public/browser/InterfaceRegistrar;)V

    return-void
.end method
