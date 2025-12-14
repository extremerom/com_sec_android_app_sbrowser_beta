.class public interface abstract Lorg/chromium/media/mojom/FrameInterfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/FrameInterfaceFactory$GetCdmOrigin_Response;,
        Lorg/chromium/media/mojom/FrameInterfaceFactory$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/FrameInterfaceFactory;",
            "Lorg/chromium/media/mojom/FrameInterfaceFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/FrameInterfaceFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/FrameInterfaceFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract bindEmbedderReceiver(Lorg/chromium/mojo_base/mojom/GenericPendingReceiver;)V
.end method

.method public abstract createCdmStorage(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/CdmStorage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createProvisionFetcher(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/ProvisionFetcher;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCdmOrigin(Lorg/chromium/media/mojom/FrameInterfaceFactory$GetCdmOrigin_Response;)V
.end method
