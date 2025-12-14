.class Lorg/chromium/network/mojom/FileEnumerator_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/FileEnumerator_Internal$FileEnumeratorGetNextResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/FileEnumerator_Internal$FileEnumeratorGetNextResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/FileEnumerator_Internal$FileEnumeratorGetNextResponseParams;,
        Lorg/chromium/network/mojom/FileEnumerator_Internal$FileEnumeratorGetNextParams;,
        Lorg/chromium/network/mojom/FileEnumerator_Internal$Stub;,
        Lorg/chromium/network/mojom/FileEnumerator_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/FileEnumerator;",
            "Lorg/chromium/network/mojom/FileEnumerator$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/FileEnumerator_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/FileEnumerator_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/FileEnumerator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
