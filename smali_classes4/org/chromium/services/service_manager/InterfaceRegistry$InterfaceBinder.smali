.class Lorg/chromium/services/service_manager/InterfaceRegistry$InterfaceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/services/service_manager/InterfaceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFactory:Lorg/chromium/services/service_manager/InterfaceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/services/service_manager/InterfaceFactory<",
            "TI;>;"
        }
    .end annotation
.end field

.field private mManager:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;+",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;+",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">;",
            "Lorg/chromium/services/service_manager/InterfaceFactory<",
            "TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/services/service_manager/InterfaceRegistry$InterfaceBinder;->mManager:Lorg/chromium/mojo/bindings/Interface$Manager;

    iput-object p2, p0, Lorg/chromium/services/service_manager/InterfaceRegistry$InterfaceBinder;->mFactory:Lorg/chromium/services/service_manager/InterfaceFactory;

    return-void
.end method


# virtual methods
.method public bindToMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/services/service_manager/InterfaceRegistry$InterfaceBinder;->mFactory:Lorg/chromium/services/service_manager/InterfaceFactory;

    invoke-interface {v0}, Lorg/chromium/services/service_manager/InterfaceFactory;->createImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->close()V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/services/service_manager/InterfaceRegistry$InterfaceBinder;->mManager:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method
