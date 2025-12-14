.class final Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->sendSIStatusLogs()V
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
    c = "com.sec.android.app.sbrowser.si_log.model.SILogRepository$sendSIStatusLogs$1"
    f = "SILogRepository.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0
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

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->access$getSiStatusLogDao$p(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    move-result-object p1

    iput v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->label:I

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;->getStatusLogs(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntityKt;->toDto(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;->getServiceId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;->getIuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;->getEventId()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;->getExtraParameter()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->sendSILog(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;)V

    goto :goto_2

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
