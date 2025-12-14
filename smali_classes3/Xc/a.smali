.class public final synthetic LXc/a;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final a:LXc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LXc/a;

    const-string v5, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v2, 0x0

    const/4 v1, 0x3

    const-class v3, LXc/b;

    const-string v4, "register"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LXc/a;->a:LXc/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, LXc/b;

    check-cast p2, LXc/f;

    iget-wide v0, p1, LXc/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    sget-object p3, Ldb/r;->a:Ldb/r;

    if-gtz p0, :cond_0

    check-cast p2, LXc/e;

    iput-object p3, p2, LXc/e;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/common/util/concurrent/v;

    const/16 v2, 0x12

    invoke-direct {p0, v2, p2, p1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p2, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, LXc/e;

    check-cast p2, LXc/e;

    iget-object p1, p2, LXc/e;->a:Lib/h;

    invoke-static {p1}, LNc/E;->o(Lib/h;)LNc/J;

    move-result-object v2

    invoke-interface {v2, v0, v1, p0, p1}, LNc/J;->k(JLjava/lang/Runnable;Lib/h;)LNc/P;

    move-result-object p0

    iput-object p0, p2, LXc/e;->c:Ljava/lang/Object;

    :goto_0
    return-object p3
.end method
