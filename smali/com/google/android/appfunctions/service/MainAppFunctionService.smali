.class public final Lcom/google/android/appfunctions/service/MainAppFunctionService;
.super Lcom/android/extensions/appfunctions/AppFunctionService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J;\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0003\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/android/appfunctions/service/MainAppFunctionService;",
        "Lcom/android/extensions/appfunctions/AppFunctionService;",
        "<init>",
        "()V",
        "Ldb/r;",
        "onCreate",
        "Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;",
        "executeAppFunctionRequest",
        "",
        "callingPackage",
        "Landroid/os/CancellationSignal;",
        "cancellationSignal",
        "Landroid/os/OutcomeReceiver;",
        "Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;",
        "Lcom/android/extensions/appfunctions/AppFunctionException;",
        "callback",
        "onExecuteFunction",
        "(Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V",
        "onDestroy",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_appfunctions"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:LD4/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/extensions/appfunctions/AppFunctionService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 7

    invoke-super {p0}, Lcom/android/extensions/appfunctions/AppFunctionService;->onCreate()V

    new-instance v6, LD4/d;

    invoke-virtual {p0}, Lcom/google/android/appfunctions/service/MainAppFunctionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getApplicationContext(...)"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LA4/f;->b()Lib/h;

    move-result-object v2

    invoke-static {}, LA4/f;->a()Lib/h;

    move-result-object v3

    sget-object v0, LA4/e;->e:LE5/v;

    invoke-virtual {v0}, LE5/v;->g()LA4/e;

    move-result-object v4

    invoke-virtual {v4}, LA4/e;->b()Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;

    move-result-object v4

    invoke-virtual {v0}, LE5/v;->g()LA4/e;

    move-result-object v0

    invoke-virtual {v0}, LA4/e;->a()Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LD4/d;-><init>(Landroid/content/Context;Lib/h;Lib/h;Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;)V

    iput-object v6, p0, Lcom/google/android/appfunctions/service/MainAppFunctionService;->a:LD4/d;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/extensions/appfunctions/AppFunctionService;->onDestroy()V

    iget-object p0, p0, Lcom/google/android/appfunctions/service/MainAppFunctionService;->a:LD4/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD4/d;->h()V

    return-void

    :cond_0
    const-string p0, "appFunctionServiceDelegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onExecuteFunction(Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 7
    .param p1    # Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation

    const-string v0, "executeAppFunctionRequest"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationSignal"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/appfunctions/service/MainAppFunctionService;->a:LD4/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lz4/e;->a(Lcom/android/extensions/appfunctions/ExecuteAppFunctionRequest;)Ly/b;

    move-result-object v3

    new-instance v4, LD4/f;

    invoke-direct {v4, p4}, LD4/f;-><init>(Landroid/os/OutcomeReceiver;)V

    new-instance p1, LD4/c;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LD4/c;-><init>(LD4/d;Ly/b;Landroid/os/OutcomeReceiver;Ljava/lang/String;Lib/c;)V

    const/4 p2, 0x3

    iget-object p0, p0, LD4/d;->e:Ljava/lang/Object;

    check-cast p0, LUc/e;

    invoke-static {p0, v0, v0, p1, p2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    new-instance p1, LD4/e;

    invoke-direct {p1, p0}, LD4/e;-><init>(LNc/C0;)V

    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void

    :cond_0
    const-string p0, "appFunctionServiceDelegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method
