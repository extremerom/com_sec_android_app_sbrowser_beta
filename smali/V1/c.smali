.class public final LV1/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lsb/n;

.field public final synthetic c:LV9/a;

.field public final synthetic d:Lsb/n;


# direct methods
.method public constructor <init>(ZLsb/n;LV9/a;Lsb/n;)V
    .locals 0

    iput-boolean p1, p0, LV1/c;->a:Z

    iput-object p2, p0, LV1/c;->b:Lsb/n;

    iput-object p3, p0, LV1/c;->c:LV9/a;

    iput-object p4, p0, LV1/c;->d:Lsb/n;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, LK1/t;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LK1/u;

    invoke-virtual {p1}, LK1/u;->a()Lx1/r;

    move-result-object p1

    invoke-static {p1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v0

    check-cast p2, La0/q;

    const p1, -0x2384ed94

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    iget-boolean p1, p0, LV1/c;->a:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    int-to-float v1, p3

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    invoke-static {p2}, LG5/T2;->f(La0/m;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    sget v1, LW1/a;->b:F

    goto :goto_0

    :goto_1
    invoke-virtual {p2, p3}, La0/q;->p(Z)V

    const/4 v1, 0x0

    const/16 v5, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, LG5/N3;->f(Lx1/r;FFFFI)Lx1/r;

    move-result-object v1

    new-instance v0, LV1/b;

    iget-object v2, p0, LV1/c;->d:Lsb/n;

    iget-object v8, p0, LV1/c;->c:LV9/a;

    invoke-direct {v0, v8, v2, p1}, LV1/b;-><init>(LV9/a;Lsb/n;Z)V

    const p1, 0x26108630

    invoke-static {p2, p1, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    iget-object p0, p0, LV1/c;->b:Lsb/n;

    if-eqz p0, :cond_2

    const p1, -0x2384e97f

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    const/4 p1, 0x6

    int-to-float p1, p1

    invoke-static {p1}, LG5/P3;->k(F)Lx1/r;

    move-result-object p1

    invoke-static {p1, p2, p3}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, La0/q;->p(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x2384e7a3

    invoke-virtual {p2, p0}, La0/q;->R(I)V

    invoke-virtual {p2, p3}, La0/q;->p(Z)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
