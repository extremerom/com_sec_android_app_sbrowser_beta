.class public final LV1/b;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LV9/a;

.field public final synthetic b:Lsb/n;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(LV9/a;Lsb/n;Z)V
    .locals 0

    iput-object p1, p0, LV1/b;->a:LV9/a;

    iput-object p2, p0, LV1/b;->b:Lsb/n;

    iput-boolean p3, p0, LV1/b;->c:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, LK1/i;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$Column"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LV1/b;->a:LV9/a;

    iget-object p3, p1, LV9/a;->c:Ljava/lang/Object;

    check-cast p3, LR1/x;

    sget-object v0, Lx1/p;->a:Lx1/p;

    const/4 v1, 0x1

    iget-object p1, p1, LV9/a;->d:Ljava/lang/Object;

    check-cast p1, LR1/x;

    const/4 v2, 0x2

    iget-object v3, p0, LV1/b;->b:Lsb/n;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    iget-boolean p0, p0, LV1/b;->c:Z

    if-nez p0, :cond_1

    iget p0, p3, LR1/x;->g:I

    if-le p0, v1, :cond_0

    int-to-float p0, v2

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    int-to-float p0, p0

    goto :goto_0

    :cond_1
    int-to-float p0, v4

    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v0, v6, v6, p0, v5}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p3, v1, p0, p2, v0}, LG5/T2;->e(LR1/x;ILx1/r;La0/m;I)V

    if-eqz v3, :cond_2

    check-cast p2, La0/q;

    const p0, 0xca5e6fe

    invoke-virtual {p2, p0}, La0/q;->R(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p2, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, La0/q;->p(Z)V

    goto :goto_2

    :cond_2
    check-cast p2, La0/q;

    const p0, 0xca5e73d

    invoke-virtual {p2, p0}, La0/q;->R(I)V

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p0, v2

    int-to-float p3, v4

    new-instance v1, LK1/r;

    invoke-static {p3}, LG5/N3;->h(F)LK1/q;

    move-result-object v2

    invoke-static {p0}, LG5/N3;->h(F)LK1/q;

    move-result-object v3

    invoke-static {p3}, LG5/N3;->h(F)LK1/q;

    move-result-object p3

    invoke-static {p0}, LG5/N3;->h(F)LK1/q;

    move-result-object p0

    invoke-direct {v1, v2, v3, p3, p0}, LK1/r;-><init>(LK1/q;LK1/q;LK1/q;LK1/q;)V

    const/4 p0, 0x3

    invoke-static {p1, p0, v1, p2, v0}, LG5/T2;->e(LR1/x;ILx1/r;La0/m;I)V

    :goto_1
    invoke-virtual {p2, v4}, La0/q;->p(Z)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
