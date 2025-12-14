.class public final Landroidx/glance/session/SessionWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/glance/session/SessionWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "Lc2/n;",
        "sessionManager",
        "Lc2/Q;",
        "timeouts",
        "LNc/x;",
        "coroutineContext",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc2/n;Lc2/Q;LNc/x;)V",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "glance_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Landroidx/work/WorkerParameters;

.field public final j:Lc2/n;

.field public final k:Lc2/Q;

.field public final l:LNc/x;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lc2/v;->a:Lc2/u;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/glance/session/SessionWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc2/n;Lc2/Q;LNc/x;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc2/n;Lc2/Q;LNc/x;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc2/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lc2/Q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionManager"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeouts"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Landroidx/glance/session/SessionWorker;->h:Landroid/content/Context;

    iput-object p2, p0, Landroidx/glance/session/SessionWorker;->i:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Landroidx/glance/session/SessionWorker;->j:Lc2/n;

    iput-object p4, p0, Landroidx/glance/session/SessionWorker;->k:Lc2/Q;

    iput-object p5, p0, Landroidx/glance/session/SessionWorker;->l:LNc/x;

    iget-object p1, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object p1, p1, Landroidx/work/WorkerParameters;->b:Lf3/i;

    const-string p2, "KEY"

    invoke-virtual {p1, p2}, Lf3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SessionWorker must be started with a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc2/n;Lc2/Q;LNc/x;ILtb/f;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    sget-object p3, Lc2/v;->a:Lc2/u;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    new-instance p4, Lc2/Q;

    invoke-direct {p4}, Lc2/Q;-><init>()V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    sget-object p3, LNc/N;->a:LWc/f;

    sget-object p5, LUc/q;->a:LNc/w0;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/glance/session/SessionWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc2/n;Lc2/Q;LNc/x;)V

    return-void
.end method


# virtual methods
.method public final f(Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lc2/x;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc2/x;

    iget v1, v0, Lc2/x;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc2/x;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc2/x;

    invoke-direct {v0, p0, p1}, Lc2/x;-><init>(Landroidx/glance/session/SessionWorker;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lc2/x;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lc2/x;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc2/x;->a:Landroidx/glance/session/SessionWorker;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Landroidx/glance/session/SessionWorker;->k:Lc2/Q;

    iget-object p1, p1, Lc2/Q;->d:LA9/b;

    new-instance v2, Lc2/D;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lc2/D;-><init>(Landroidx/glance/session/SessionWorker;Lib/c;)V

    iput-object p0, v0, Lc2/x;->a:Landroidx/glance/session/SessionWorker;

    iput v3, v0, Lc2/x;->d:I

    invoke-static {p1, v2, v0}, LG5/A;->g(LA9/b;Lc2/D;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lf3/s;

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "TIMEOUT_EXIT_REASON"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lf3/i;

    invoke-direct {v0, p1}, Lf3/i;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Lf3/i;->c(Lf3/i;)[B

    new-instance p1, Lf3/r;

    invoke-direct {p1, v0}, Lf3/r;-><init>(Lf3/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :goto_2
    iget v0, p0, Lf3/t;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lf3/t;->c:I

    const-string v1, " UNKNOWN_STOP_REASON"

    :goto_3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/P;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_0
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED"

    goto :goto_3

    :pswitch_1
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_SYSTEM_PROCESSING"

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_USER"

    goto :goto_3

    :pswitch_3
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_APP_STANDBY"

    goto :goto_3

    :pswitch_4
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_BACKGROUND_RESTRICTION"

    goto :goto_3

    :pswitch_5
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_QUOTA"

    goto :goto_3

    :pswitch_6
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW"

    goto :goto_3

    :pswitch_7
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CONSTRAINT_DEVICE_IDLE"

    goto :goto_3

    :pswitch_8
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CONSTRAINT_CONNECTIVITY"

    goto :goto_3

    :pswitch_9
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CONSTRAINT_CHARGING"

    goto :goto_3

    :pswitch_a
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW"

    goto :goto_3

    :pswitch_b
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_DEVICE_STATE"

    goto :goto_3

    :pswitch_c
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_TIMEOUT"

    goto :goto_3

    :pswitch_d
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_PREEMPT"

    goto :goto_3

    :pswitch_e
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_CANCELLED_BY_APP"

    goto :goto_3

    :pswitch_f
    iget v0, p0, Lf3/t;->c:I

    const-string v1, " STOP_REASON_UNDEFINED"

    goto :goto_3

    :goto_4
    iget-object v1, p0, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Worker is canceled because of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "GWT:SessionWorker"

    invoke-static {v1, v2, p1, v3}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lf3/t;->c:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    iget p1, p0, Lf3/t;->c:I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    :cond_4
    const-string p1, "-"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v4}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " forceUpdateAppWidget"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.TEMPLATE_WIDGET_FORCE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/glance/session/SessionWorker;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "force_widget_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    new-instance p1, Lf3/r;

    sget-object p0, Lf3/i;->c:Lf3/i;

    invoke-direct {p1, p0}, Lf3/r;-><init>(Lf3/i;)V

    :cond_6
    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()LNc/x;
    .locals 0

    iget-object p0, p0, Landroidx/glance/session/SessionWorker;->l:LNc/x;

    return-object p0
.end method
