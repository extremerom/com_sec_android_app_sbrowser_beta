.class public final Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;
.implements Lsb/o;
.implements Lsb/p;
.implements Lsb/q;
.implements Lsb/r;
.implements Lsb/s;
.implements Lsb/t;
.implements Lsb/u;
.implements Lsb/b;
.implements Lsb/c;
.implements Lsb/d;
.implements Lsb/e;
.implements Lsb/f;
.implements Lsb/g;
.implements Lsb/h;
.implements Lsb/i;
.implements Lsb/j;
.implements Lsb/l;
.implements Lsb/m;


# instance fields
.field public final a:I

.field public final b:Z

.field public c:Ldb/b;

.field public d:La0/i0;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IZLdb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li0/a;->a:I

    iput-boolean p2, p0, Li0/a;->b:Z

    iput-object p3, p0, Li0/a;->c:Ldb/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;La0/m;I)Ljava/lang/Object;
    .locals 3

    check-cast p2, La0/q;

    iget v0, p0, Li0/a;->a:I

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p0, p2}, Li0/a;->g(La0/m;)V

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v1}, Li0/b;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p3

    iget-object v1, p0, Li0/a;->c:Ldb/b;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v1, Lsb/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, LV/p;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, p3, v2}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, p2, La0/i0;->d:Lsb/n;

    :cond_1
    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;
    .locals 8

    check-cast p3, La0/q;

    iget v0, p0, Li0/a;->a:I

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p0, p3}, Li0/a;->g(La0/m;)V

    invoke-virtual {p3, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Li0/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p4

    iget-object v1, p0, Li0/a;->c:Ldb/b;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v1, Lsb/p;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Lsb/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v7, LJ0/l;

    const/4 v3, 0x3

    move-object v1, v7

    move v2, p4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LJ0/l;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p3, La0/i0;->d:Lsb/n;

    :cond_1
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;
    .locals 9

    check-cast p4, La0/q;

    iget v0, p0, Li0/a;->a:I

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p0, p4}, Li0/a;->g(La0/m;)V

    invoke-virtual {p4, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p5

    iget-object v1, p0, Li0/a;->c:Ldb/b;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v1, Lsb/q;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lsb/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v8, LU1/h;

    const/4 v7, 0x4

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, LU1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v8, p4, La0/i0;->d:Lsb/n;

    :cond_1
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;
    .locals 9

    check-cast p5, La0/q;

    iget v0, p0, Li0/a;->a:I

    invoke-virtual {p5, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p0, p5}, Li0/a;->g(La0/m;)V

    invoke-virtual {p5, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p6

    iget-object v1, p0, Li0/a;->c:Ldb/b;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v1, Lsb/r;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lsb/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5}, La0/q;->r()La0/i0;

    move-result-object p5

    if-eqz p5, :cond_1

    new-instance v8, LJ0/n;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, LJ0/n;-><init>(Li0/a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v8, p5, La0/i0;->d:Lsb/n;

    :cond_1
    return-object v0
.end method

.method public final g(La0/m;)V
    .locals 3

    iget-boolean v0, p0, Li0/a;->b:Z

    if-eqz v0, :cond_4

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->v()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_4

    iget v0, p1, La0/i0;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, La0/i0;->a:I

    iget-object v0, p0, Li0/a;->d:La0/i0;

    invoke-static {v0, p1}, Li0/b;->d(La0/i0;La0/i0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Li0/a;->d:La0/i0;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Li0/a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li0/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/i0;

    invoke-static {v2, p1}, Li0/b;->d(La0/i0;La0/i0;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final h(Ldb/b;)V
    .locals 4

    iget-object v0, p0, Li0/a;->c:Ldb/b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, p0, Li0/a;->c:Ldb/b;

    iget-boolean p1, p0, Li0/a;->b:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Li0/a;->d:La0/i0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, La0/i0;->b:La0/u;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, La0/u;->p(La0/i0;Ljava/lang/Object;)La0/O;

    :cond_0
    iput-object v0, p0, Li0/a;->d:La0/i0;

    :cond_1
    iget-object p0, p0, Li0/a;->e:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/i0;

    iget-object v3, v2, La0/i0;->b:La0/u;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, v0}, La0/u;->p(La0/i0;Ljava/lang/Object;)La0/O;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p1, La0/q;

    iget v0, p0, Li0/a;->a:I

    invoke-virtual {p1, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p0, p1}, Li0/a;->g(La0/m;)V

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Li0/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Li0/b;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr p2, v0

    iget-object v0, p0, Li0/a;->c:Ldb/b;

    invoke-static {v2, v0}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v0, Lsb/n;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v2, p0}, Ltb/z;->e(ILjava/lang/Object;)V

    iput-object p0, p1, La0/i0;->d:Lsb/n;

    :cond_1
    return-object p2
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Li0/a;->a(Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, La0/m;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Li0/a;->d(Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p4

    check-cast v4, La0/m;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li0/a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p5

    check-cast v5, La0/m;

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Li0/a;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
