.class Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceResetPersonalDataSyncSetParams;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsActivatedResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsActivatedResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsActivatedResponseParams;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsActivatedParams;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsPersonalDataSyncSetResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsPersonalDataSyncSetResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsPersonalDataSyncSetResponseParams;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$TerraceSamsungPassServiceIsPersonalDataSyncSetParams;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$Stub;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService;",
            "Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
