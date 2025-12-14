.class Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$FileUtilitiesHostGetFileInfoResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$FileUtilitiesHostGetFileInfoResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$FileUtilitiesHostGetFileInfoResponseParams;,
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$FileUtilitiesHostGetFileInfoParams;,
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileUtilitiesHost;",
            "Lorg/chromium/blink/mojom/FileUtilitiesHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileUtilitiesHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
