.class public final LPc/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LPc/e;->a:I

    iput-object p2, p0, LPc/e;->c:Ljava/lang/Object;

    iput-object p3, p0, LPc/e;->b:Ljava/lang/Object;

    iput-object p4, p0, LPc/e;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LPc/e;->a:I

    iput-object p1, p0, LPc/e;->b:Ljava/lang/Object;

    iput-object p3, p0, LPc/e;->c:Ljava/lang/Object;

    iput-object p4, p0, LPc/e;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LPc/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lv2/s;

    iget-object v0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast v0, Lv2/O;

    iget-object v1, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object p0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p0, Lv2/O;

    invoke-static {v1, p1, p0, v0}, LZ3/x;->j(LZ3/x;Lv2/s;Lv2/O;Lv2/O;)Lv2/s;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast p1, Lj9/h;

    iget-boolean v0, p1, Lj9/h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast v0, Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj9/h;->c()Landroid/graphics/RuntimeShader;

    move-result-object v1

    iget-object p0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast p0, Lm9/l;

    iget-object p0, p0, Lm9/l;->e:Landroid/util/Size;

    const-string v2, "<this>"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v2, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p0, Lk9/w;

    invoke-direct {p0, v0, v1, v2}, Lk9/w;-><init>(Lk9/z;Landroid/graphics/Shader;Landroid/graphics/PointF;)V

    invoke-virtual {v0, p0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lj9/h;->c:Z

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/H;

    iget-object p1, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p1, Lj0/h;

    iget-object v0, p1, Lj0/h;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p0, LPc/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lj0/h;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lj0/h;->b:Ljava/util/LinkedHashMap;

    iget-object p0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast p0, Lj0/f;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj0/g;

    invoke-direct {v0, p0, p1, v1}, Lj0/g;-><init>(Lj0/f;Lj0/h;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Key "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was used multiple times "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast v0, LV/t;

    iget-object v0, v0, LV/t;->a:LW/a;

    if-ltz p1, :cond_3

    invoke-virtual {v0}, LW/a;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    new-instance v0, LW/u;

    iget-object v1, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast v1, LW/q;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LW/u;-><init>(LW/q;ILib/c;)V

    iget-object p0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p0, LUc/e;

    const/4 p1, 0x3

    invoke-static {p0, v2, v2, v0, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string p0, "Can\'t scroll to index "

    const-string v1, ", it is out of bounds [0, "

    invoke-static {p1, p0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, LW/a;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    const/4 p1, 0x0

    iget-object v0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast v0, Lsb/k;

    iget-object v1, p0, LPc/e;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, LUc/a;->a(Lsb/k;Ljava/lang/Object;LI5/b;)LI5/b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast p0, Lib/h;

    invoke-static {p0, p1}, LNc/E;->s(Lib/h;Ljava/lang/Throwable;)V

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast v0, LB0/I;

    invoke-interface {v0}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v0

    iget-object v1, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast v1, LD4/d;

    iget-object p0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p0, LU/v;

    const-string v2, "layoutDirection"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, LU/v;->b:I

    if-ge v2, v3, :cond_a

    iget-object v3, v1, LD4/d;->f:Ljava/lang/Object;

    check-cast v3, [Lz0/G;

    aget-object v3, v3, v2

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v4, v1, LD4/d;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz0/w;

    invoke-interface {v4}, Lz0/w;->e()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, LU/w;

    if-eqz v5, :cond_5

    check-cast v4, LU/w;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    iget-object v4, v4, LU/w;->c:LG5/x2;

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, v1, LD4/d;->d:Ljava/lang/Object;

    check-cast v4, LG5/x2;

    :cond_7
    invoke-virtual {v1, v3}, LD4/d;->e(Lz0/G;)I

    move-result v5

    iget v6, p0, LU/v;->a:I

    sub-int/2addr v6, v5

    sget-object v5, LU/q;->Horizontal:LU/q;

    iget-object v7, v1, LD4/d;->a:Ljava/lang/Object;

    check-cast v7, LU/q;

    if-ne v7, v5, :cond_8

    sget-object v8, LH0/k;->Ltr:LH0/k;

    goto :goto_2

    :cond_8
    move-object v8, v0

    :goto_2
    invoke-virtual {v4, v6, v8, v3}, LG5/x2;->a(ILH0/k;Lz0/G;)I

    move-result v4

    iget-object v6, p0, LU/v;->c:Ljava/lang/Object;

    check-cast v6, [I

    if-ne v7, v5, :cond_9

    aget v5, v6, v2

    invoke-static {p1, v3, v5, v4}, Lz0/F;->c(Lz0/F;Lz0/G;II)V

    goto :goto_3

    :cond_9
    aget v5, v6, v2

    invoke-static {p1, v3, v4, v5}, Lz0/F;->c(Lz0/F;Lz0/G;II)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast v0, LU/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast v1, LB0/I;

    iget v2, v0, LU/s;->a:F

    invoke-interface {v1, v2}, LH0/b;->j(F)I

    move-result v2

    iget v0, v0, LU/s;->b:F

    invoke-interface {v1, v0}, LH0/b;->j(F)I

    move-result v0

    iget-object p0, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p0, Lz0/G;

    invoke-static {p1, p0, v2, v0}, Lz0/F;->e(Lz0/F;Lz0/G;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, LPc/e;->b:Ljava/lang/Object;

    check-cast v0, LS/e;

    iget-boolean v0, v0, LS/e;->d:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    :goto_4
    mul-float v1, v0, p1

    iget-object v2, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast v2, LS/N;

    invoke-interface {v2, v1}, LS/N;->scrollBy(F)F

    move-result v1

    mul-float/2addr v1, v0

    cmpg-float v0, v1, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scroll animation cancelled because scroll was not consumed ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast p0, LNc/j0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-interface {p0, p1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_c
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    sget-object p1, LPc/k;->l:LQ6/i;

    iget-object v0, p0, LPc/e;->b:Ljava/lang/Object;

    if-eq v0, p1, :cond_d

    iget-object p1, p0, LPc/e;->c:Ljava/lang/Object;

    check-cast p1, LPc/i;

    iget-object p0, p0, LPc/e;->d:Ljava/lang/Object;

    check-cast p0, LXc/f;

    check-cast p0, LXc/e;

    iget-object p0, p0, LXc/e;->a:Lib/h;

    const/4 v1, 0x0

    iget-object p1, p1, LPc/i;->b:Lsb/k;

    invoke-static {p1, v0, v1}, LUc/a;->a(Lsb/k;Ljava/lang/Object;LI5/b;)LI5/b;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p0, p1}, LNc/E;->s(Lib/h;Ljava/lang/Throwable;)V

    :cond_d
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
