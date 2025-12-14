.class Lorg/chromium/media/mojom/CdmFile_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileWriteResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileWriteResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileWriteResponseParams;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileWriteParams;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileReadResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileReadResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileReadResponseParams;,
        Lorg/chromium/media/mojom/CdmFile_Internal$CdmFileReadParams;,
        Lorg/chromium/media/mojom/CdmFile_Internal$Stub;,
        Lorg/chromium/media/mojom/CdmFile_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/CdmFile;",
            "Lorg/chromium/media/mojom/CdmFile$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/CdmFile_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmFile_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/CdmFile_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
