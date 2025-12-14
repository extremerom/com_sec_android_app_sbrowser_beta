.class public final LA2/g;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LA2/i;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:LA2/n;


# direct methods
.method public constructor <init>(LA2/i;Landroid/net/Uri;LA2/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, LA2/g;->b:LA2/i;

    iput-object p2, p0, LA2/g;->c:Landroid/net/Uri;

    iput-object p3, p0, LA2/g;->d:LA2/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LA2/g;

    iget-object v0, p0, LA2/g;->c:Landroid/net/Uri;

    iget-object v1, p0, LA2/g;->d:LA2/n;

    iget-object p0, p0, LA2/g;->b:LA2/i;

    invoke-direct {p1, p0, v0, v1, p2}, LA2/g;-><init>(LA2/i;Landroid/net/Uri;LA2/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LA2/g;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LA2/g;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LA2/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LA2/g;->a:I

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

    iget-object p1, p0, LA2/g;->b:LA2/i;

    iget-object v1, p0, LA2/g;->c:Landroid/net/Uri;

    iget-object v3, p0, LA2/g;->d:LA2/n;

    iput v2, p0, LA2/g;->a:I

    new-instance v4, LNc/k;

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    invoke-direct {v4, v2, p0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v4}, LNc/k;->q()V

    iget-object p0, p1, LA2/i;->a:Landroid/adservices/measurement/MeasurementManager;

    iget-object p1, v3, LA2/n;->b:Landroid/view/MotionEvent;

    new-instance v2, LA2/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LA2/f;-><init>(I)V

    new-instance v3, Lx2/c;

    invoke-direct {v3, v4}, Lx2/c;-><init>(LNc/k;)V

    invoke-static {p0, v1, p1, v2, v3}, LA2/e;->v(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/MotionEvent;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    invoke-virtual {v4}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
