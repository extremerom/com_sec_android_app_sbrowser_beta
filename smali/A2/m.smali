.class public abstract LA2/m;
.super LA2/d;
.source "SourceFile"


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 1

    const-string v0, "mMeasurementManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method

.method public static h(LA2/m;LA2/b;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "LA2/b;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {p1}, LA2/b;->a()Landroid/adservices/measurement/DeletionRequest;

    move-result-object p1

    new-instance p2, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, p2, v1}, LA2/a;->s(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/DeletionRequest;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static i(LA2/m;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "Lib/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance p1, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, v1}, LA2/a;->r(Landroid/adservices/measurement/MeasurementManager;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public static j(LA2/m;LA2/n;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$RegisterSourceOptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "LA2/n;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LA2/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LA2/l;-><init>(LA2/m;LA2/n;Lib/c;)V

    invoke-static {v0, p2}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static k(LA2/m;Landroid/net/Uri;Landroid/view/InputEvent;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p3}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance p3, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, p2, p3, v1}, LA2/a;->w(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static l(LA2/m;Landroid/net/Uri;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "Landroid/net/Uri;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance p2, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, p2, v1}, LA2/a;->v(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static m(LA2/m;LA2/p;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "LA2/p;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {p1}, LA2/p;->a()Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object p1

    new-instance p2, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, p2, v1}, LA2/a;->t(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebSourceRegistrationRequest;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static n(LA2/m;LA2/s;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/m;",
            "LA2/s;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    iget-object p0, p0, LA2/m;->a:Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {p1}, LA2/s;->a()Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    move-result-object p1

    new-instance p2, LA2/f;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lb1/c;

    invoke-direct {v1, v0}, Lb1/c;-><init>(LNc/k;)V

    invoke-static {p0, p1, p2, v1}, LA2/a;->u(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebTriggerRegistrationRequest;LA2/f;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public a(LA2/b;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # LA2/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/b;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, LA2/m;->h(LA2/m;LA2/b;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, LA2/m;->i(LA2/m;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(LA2/n;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # LA2/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$RegisterSourceOptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/n;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, LA2/m;->j(LA2/m;LA2/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/net/Uri;Landroid/view/InputEvent;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/InputEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, LA2/m;->k(LA2/m;Landroid/net/Uri;Landroid/view/InputEvent;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e(Landroid/net/Uri;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, LA2/m;->l(LA2/m;Landroid/net/Uri;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(LA2/p;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # LA2/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/p;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, LA2/m;->m(LA2/m;LA2/p;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(LA2/s;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # LA2/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/s;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, LA2/m;->n(LA2/m;LA2/s;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
