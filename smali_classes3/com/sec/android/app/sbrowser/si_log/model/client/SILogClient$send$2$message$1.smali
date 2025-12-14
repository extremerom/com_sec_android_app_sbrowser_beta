.class public final Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J3\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0006\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ3\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0006\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ;\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0006\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "com/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1",
        "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "",
        "responseHeaders",
        "Ldb/r;",
        "onSuccess",
        "(Landroid/content/Context;Ljava/util/Map;)V",
        "onHttpNotModified",
        "message",
        "onFailure",
        "(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

.field final synthetic $siLogApi:Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$siLogApi:Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$siLogApi:Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;->getApi()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getApi(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onHttpNotModified(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$siLogApi:Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;->getApi()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getApi(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;->$siLogApi:Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;->getApi()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getApi(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
