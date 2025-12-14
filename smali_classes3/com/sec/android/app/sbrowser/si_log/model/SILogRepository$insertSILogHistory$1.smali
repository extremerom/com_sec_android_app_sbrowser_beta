.class final Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->insertSILogHistory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.si_log.model.SILogRepository$insertSILogHistory$1"
    f = "SILogRepository.kt"
    l = {
        0x91,
        0x95
    }
    m = "invokeSuspend"
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

.field final synthetic $requestParametersString:Ljava/lang/String;

.field final synthetic $serviceId:I

.field final synthetic $value:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$requestParametersString:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$serviceId:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$eventId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$value:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$extraParams:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$requestParametersString:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$serviceId:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$eventId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$value:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$extraParams:Ljava/util/Map;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->label:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->access$getSiLogDataStore(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->getStoragePeriodFlow()LQc/h;

    move-result-object v2

    iput v5, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->label:I

    invoke-static {v2, v0}, LQc/n0;->n(LQc/h;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_4

    return-object v3

    :cond_4
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->access$getSiLogPreference(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getServerType()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$requestParametersString:Ljava/lang/String;

    const-string v6, "://"

    invoke-static {v2, v6, v5}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    new-instance v5, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    iget v8, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$serviceId:I

    iget v9, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$eventId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$value:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->$extraParams:Ljava/util/Map;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v14, v6

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :goto_2
    const/16 v18, 0xc0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v19}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;JILtb/f;)V

    iput v4, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;->label:I

    invoke-virtual {v2, v5, v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->insertSILog(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    return-object v3
.end method
