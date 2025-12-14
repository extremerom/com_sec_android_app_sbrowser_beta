.class public interface abstract Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsActivated_Response;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsPersonalDataSyncSet_Response;,
        Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$Proxy;
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

    sget-object v0, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract isActivated(Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsActivated_Response;)V
.end method

.method public abstract isPersonalDataSyncSet(Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsPersonalDataSyncSet_Response;)V
.end method

.method public abstract resetPersonalDataSyncSet()V
.end method
