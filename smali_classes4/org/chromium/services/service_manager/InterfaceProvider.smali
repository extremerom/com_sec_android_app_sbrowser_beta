.class public Lorg/chromium/services/service_manager/InterfaceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mInterfaceProvider:Lorg/chromium/service_manager/mojom/InterfaceProvider$Proxy;


# virtual methods
.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/service_manager/InterfaceProvider;->mInterfaceProvider:Lorg/chromium/service_manager/mojom/InterfaceProvider$Proxy;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    return-void
.end method
