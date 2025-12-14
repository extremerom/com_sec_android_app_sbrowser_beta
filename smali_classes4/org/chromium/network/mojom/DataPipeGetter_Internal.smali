.class Lorg/chromium/network/mojom/DataPipeGetter_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$DataPipeGetterCloneParams;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$DataPipeGetterReadResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$DataPipeGetterReadResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$DataPipeGetterReadResponseParams;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$DataPipeGetterReadParams;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$Stub;,
        Lorg/chromium/network/mojom/DataPipeGetter_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/DataPipeGetter;",
            "Lorg/chromium/network/mojom/DataPipeGetter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DataPipeGetter_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DataPipeGetter_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/DataPipeGetter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
