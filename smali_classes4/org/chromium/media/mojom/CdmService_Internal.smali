.class Lorg/chromium/media/mojom/CdmService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmService_Internal$CdmServiceCreateCdmFactoryParams;,
        Lorg/chromium/media/mojom/CdmService_Internal$Stub;,
        Lorg/chromium/media/mojom/CdmService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/CdmService;",
            "Lorg/chromium/media/mojom/CdmService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/CdmService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/CdmService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
