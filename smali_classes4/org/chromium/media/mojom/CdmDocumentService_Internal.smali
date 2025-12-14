.class Lorg/chromium/media/mojom/CdmDocumentService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdResponseParams;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdParams;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformResponseParams;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformParams;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$Stub;,
        Lorg/chromium/media/mojom/CdmDocumentService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/CdmDocumentService;",
            "Lorg/chromium/media/mojom/CdmDocumentService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmDocumentService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
