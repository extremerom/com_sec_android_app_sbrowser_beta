.class final Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/o;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "LQc/i;",
        "Lp1/b;",
        "",
        "exception",
        "Ldb/r;",
        "<anonymous>",
        "(LQc/i;Ljava/lang/Throwable;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.si_log.model.SILogDataStore$dataStoreDataFlow$2$1"
    f = "SILogDataStore.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lib/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(LQc/i;Ljava/lang/Throwable;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQc/i;",
            "Ljava/lang/Throwable;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;-><init>(Lib/c;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->L$1:Ljava/lang/Object;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lib/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->invoke(LQc/i;Ljava/lang/Throwable;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->label:I

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_3

    invoke-static {}, LG5/n;->b()Lp1/b;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;->label:I

    invoke-interface {p1, v1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_3
    throw v1
.end method
