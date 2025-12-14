.class public final LY1/m;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZZZ)V
    .locals 0

    iput-object p1, p0, LY1/m;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput-boolean p2, p0, LY1/m;->b:Z

    iput-boolean p3, p0, LY1/m;->c:Z

    iput-boolean p4, p0, LY1/m;->d:Z

    iput-boolean p5, p0, LY1/m;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    sget p2, LW1/b;->a:F

    iget-object v1, p0, LY1/m;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p2, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p2, p1}, LW1/b;->a(Ljava/util/ArrayList;La0/m;)I

    move-result v2

    iget-boolean v0, p0, LY1/m;->b:Z

    sget-object v3, Lx1/p;->a:Lx1/p;

    if-eqz v0, :cond_2

    invoke-static {v3}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    invoke-static {v0}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    check-cast p1, La0/q;

    const v0, -0x7dda5de4

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    const/4 v10, 0x0

    iget-boolean v0, p0, LY1/m;->c:Z

    if-eqz v0, :cond_3

    sget-object v0, LR1/d;->h:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v10

    :goto_2
    invoke-virtual {p1, v10}, La0/q;->p(Z)V

    if-eqz v0, :cond_5

    const v0, -0x7dda5da1

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_4

    move-object p2, v6

    goto :goto_3

    :cond_4
    new-instance p2, Lz1/T0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v6, p2}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p2

    :goto_3
    new-instance v7, LY1/k;

    iget-boolean v4, p0, LY1/m;->d:Z

    iget-boolean v5, p0, LY1/m;->e:Z

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, LY1/k;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILx1/r;ZZ)V

    invoke-static {p2, v10, v7, p1, v10}, LG5/o;->a(Lx1/r;ILY1/k;La0/m;I)V

    invoke-virtual {p1, v10}, La0/q;->p(Z)V

    goto :goto_4

    :cond_5
    const v0, -0x7dda5a98

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, LM1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1, v10}, La0/q;->p(Z)V

    const p2, -0x7dda56ef

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    new-instance p2, LY1/l;

    iget-boolean v4, p0, LY1/m;->d:Z

    iget-boolean v5, p0, LY1/m;->e:Z

    move-object v0, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, LY1/l;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILx1/r;ZZ)V

    const p0, -0x37d0c0bc

    invoke-static {p1, p0, p2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object p0

    const/16 v8, 0xc00

    const/4 v9, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v9}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-virtual {p1, v10}, La0/q;->p(Z)V

    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
