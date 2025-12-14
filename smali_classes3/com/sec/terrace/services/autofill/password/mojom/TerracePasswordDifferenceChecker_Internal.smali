.class Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerGetDeviceVertualViewSupportedStatusResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerGetDeviceVertualViewSupportedStatusResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerGetDeviceVertualViewSupportedStatusResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerGetDeviceVertualViewSupportedStatusParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerOnQueryResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerOnQueryResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerOnQueryResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$TerracePasswordDifferenceCheckerOnQueryParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
