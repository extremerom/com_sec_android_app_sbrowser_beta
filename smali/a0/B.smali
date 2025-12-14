.class public final La0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/W;


# static fields
.field public static final a:La0/B;

.field public static final b:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La0/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La0/B;->a:La0/B;

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    invoke-virtual {v0}, LNc/w0;->K()LNc/w0;

    move-result-object v0

    new-instance v1, La0/z;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkb/i;-><init>(ILib/c;)V

    invoke-static {v0, v1}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    sput-object v0, La0/B;->b:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->e(Lib/f;Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->g(Lib/f;Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 1

    new-instance p0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {p0}, LNc/k;->q()V

    new-instance p2, La0/A;

    invoke-direct {p2, p0, p1}, La0/A;-><init>(LNc/k;Lsb/k;)V

    sget-object p1, La0/B;->b:Landroid/view/Choreographer;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance p1, LB0/a;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p2}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {p0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method
