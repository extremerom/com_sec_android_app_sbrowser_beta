.class Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncResponseParams;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileBackedBlobFactory;",
            "Lorg/chromium/blink/mojom/FileBackedBlobFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
