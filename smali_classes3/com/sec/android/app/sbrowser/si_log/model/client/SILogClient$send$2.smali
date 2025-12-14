.class final Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;->send(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "",
        "<anonymous>",
        "(LNc/B;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.si_log.model.client.SILogClient$send$2"
    f = "SILogClient.kt"
    l = {}
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

.field final synthetic $internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

.field final synthetic $iuid:Ljava/lang/String;

.field final synthetic $serviceId:I

.field final synthetic $value:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$serviceId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$iuid:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$eventId:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$value:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$extraParams:Ljava/util/Map;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$serviceId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$iuid:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$eventId:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$value:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$extraParams:Ljava/util/Map;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "Failed to send log: "

    const-string v1, "SILogClient"

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->label:I

    if-nez v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_0
    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogGetApi;

    iget v4, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$serviceId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$iuid:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$eventId:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$value:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$extraParams:Ljava/util/Map;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogGetApi;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;->$internalResultListener:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2$message$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;)V

    invoke-direct {v2, p1, v3}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/client/api/SILogApi;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$MessageListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->SI_LOG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V

    sget-object p0, Ldb/r;->a:Ldb/r;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    :goto_1
    move-object p0, p1

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :goto_3
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
