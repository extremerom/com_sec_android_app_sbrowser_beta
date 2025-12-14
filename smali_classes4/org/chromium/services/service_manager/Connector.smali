.class public Lorg/chromium/services/service_manager/Connector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/services/service_manager/Connector$ConnectorBindInterfaceResponseImpl;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mConnector:Lorg/chromium/service_manager/mojom/Connector$Proxy;


# virtual methods
.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/service_manager/Connector;->mConnector:Lorg/chromium/service_manager/mojom/Connector$Proxy;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    return-void
.end method
