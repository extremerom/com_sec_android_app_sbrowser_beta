.class Lorg/chromium/network/mojom/WebBundleHandle_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebBundleHandle_Internal$WebBundleHandleOnWebBundleLoadFinishedParams;,
        Lorg/chromium/network/mojom/WebBundleHandle_Internal$WebBundleHandleOnWebBundleErrorParams;,
        Lorg/chromium/network/mojom/WebBundleHandle_Internal$WebBundleHandleCloneParams;,
        Lorg/chromium/network/mojom/WebBundleHandle_Internal$Stub;,
        Lorg/chromium/network/mojom/WebBundleHandle_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebBundleHandle;",
            "Lorg/chromium/network/mojom/WebBundleHandle$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/WebBundleHandle_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/WebBundleHandle_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/WebBundleHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
