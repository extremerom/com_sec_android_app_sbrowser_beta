.class Lorg/chromium/media/mojom/CdmStorage_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmStorage_Internal$CdmStorageOpenResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/CdmStorage_Internal$CdmStorageOpenResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/CdmStorage_Internal$CdmStorageOpenResponseParams;,
        Lorg/chromium/media/mojom/CdmStorage_Internal$CdmStorageOpenParams;,
        Lorg/chromium/media/mojom/CdmStorage_Internal$Stub;,
        Lorg/chromium/media/mojom/CdmStorage_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/CdmStorage;",
            "Lorg/chromium/media/mojom/CdmStorage$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/CdmStorage_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmStorage_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/CdmStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
