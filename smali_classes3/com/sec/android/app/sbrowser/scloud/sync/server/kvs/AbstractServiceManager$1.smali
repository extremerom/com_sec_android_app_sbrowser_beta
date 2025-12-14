.class Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/AbstractServiceManager;->mCid:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->cancelExecute(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
