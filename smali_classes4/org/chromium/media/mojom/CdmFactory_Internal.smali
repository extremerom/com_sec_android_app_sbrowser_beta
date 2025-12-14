.class Lorg/chromium/media/mojom/CdmFactory_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmFactory_Internal$CdmFactoryCreateCdmResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmFactory_Internal$CdmFactoryCreateCdmResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmFactory_Internal$CdmFactoryCreateCdmResponseParams;,
        Lorg/chromium/media/mojom/CdmFactory_Internal$CdmFactoryCreateCdmParams;,
        Lorg/chromium/media/mojom/CdmFactory_Internal$Stub;,
        Lorg/chromium/media/mojom/CdmFactory_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/CdmFactory;",
            "Lorg/chromium/media/mojom/CdmFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/CdmFactory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmFactory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/CdmFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
