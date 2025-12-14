.class Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCNetworkUtil;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;

    move-result-object p0

    return-object p0
.end method
