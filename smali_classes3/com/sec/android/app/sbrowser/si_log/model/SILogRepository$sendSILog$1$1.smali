.class public final Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1",
        "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;",
        "",
        "queryString",
        "Ldb/r;",
        "onSuccess",
        "(Ljava/lang/String;)V",
        "onFailure",
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
.field final synthetic $eventId:I

.field final synthetic $extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultListener:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;

.field final synthetic $serviceId:I

.field final synthetic $value:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;IILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$resultListener:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$serviceId:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$eventId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$value:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$extraParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 7

    const-string v0, "queryString"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$resultListener:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;->onFailure()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$serviceId:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$eventId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$value:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$extraParams:Ljava/util/Map;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->insertSILogHistory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    const-string v0, "queryString"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$resultListener:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;->onSuccess()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$serviceId:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$eventId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$value:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1$1;->$extraParams:Ljava/util/Map;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->insertSILogHistory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
