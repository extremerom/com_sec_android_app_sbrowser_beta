.class public final Lz1/x;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Ltb/w;

.field public final synthetic b:Ltb/w;

.field public final synthetic c:Ltb/w;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroid/widget/RemoteViews;

.field public final synthetic f:Lz1/z0;

.field public final synthetic g:Ltb/w;

.field public final synthetic h:Ltb/w;

.field public final synthetic i:Ltb/w;

.field public final synthetic j:Ltb/w;

.field public final synthetic k:Ltb/w;

.field public final synthetic l:Lz1/f1;

.field public final synthetic m:Ltb/w;

.field public final synthetic n:Ltb/w;


# direct methods
.method public constructor <init>(Ltb/w;Ltb/w;Ltb/w;Landroid/content/Context;Landroid/widget/RemoteViews;Lz1/z0;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/u;Ltb/w;Ltb/w;Lz1/f1;Ltb/w;Ltb/w;Ltb/w;Ltb/w;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lz1/x;->a:Ltb/w;

    move-object v1, p2

    iput-object v1, v0, Lz1/x;->b:Ltb/w;

    move-object v1, p3

    iput-object v1, v0, Lz1/x;->c:Ltb/w;

    move-object v1, p4

    iput-object v1, v0, Lz1/x;->d:Landroid/content/Context;

    move-object v1, p5

    iput-object v1, v0, Lz1/x;->e:Landroid/widget/RemoteViews;

    move-object v1, p6

    iput-object v1, v0, Lz1/x;->f:Lz1/z0;

    move-object v1, p7

    iput-object v1, v0, Lz1/x;->g:Ltb/w;

    move-object v1, p8

    iput-object v1, v0, Lz1/x;->h:Ltb/w;

    move-object v1, p11

    iput-object v1, v0, Lz1/x;->i:Ltb/w;

    move-object v1, p12

    iput-object v1, v0, Lz1/x;->j:Ltb/w;

    move-object/from16 v1, p15

    iput-object v1, v0, Lz1/x;->k:Ltb/w;

    move-object/from16 v1, p16

    iput-object v1, v0, Lz1/x;->l:Lz1/f1;

    move-object/from16 v1, p18

    iput-object v1, v0, Lz1/x;->m:Ltb/w;

    move-object/from16 v1, p19

    iput-object v1, v0, Lz1/x;->n:Ltb/w;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ldb/r;

    check-cast p2, Lx1/q;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modifier"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Ly1/b;

    const-string v0, "GWT:ApplyModifiers"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lz1/x;->a:Ltb/w;

    iget-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v1, " More than one clickable defined on the same GlanceModifier, only the last one will be used."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    instance-of p1, p2, LK1/w;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lz1/x;->b:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    instance-of p1, p2, LK1/p;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lz1/x;->c:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    instance-of p1, p2, Lx1/e;

    iget-object v1, p0, Lz1/x;->f:Lz1/z0;

    iget-object v2, p0, Lz1/x;->e:Landroid/widget/RemoteViews;

    const-string v3, "setBackgroundResource"

    const-string v4, " "

    const/16 v5, 0x1f

    const-string v6, "msg"

    iget v1, v1, Lz1/z0;->a:I

    if-eqz p1, :cond_a

    check-cast p2, Lx1/e;

    instance-of p1, p2, Lx1/d;

    if-eqz p1, :cond_4

    check-cast p2, Lx1/d;

    iget-object p0, p2, Lx1/d;->a:Lx1/a;

    iget p0, p0, Lx1/a;->a:I

    invoke-virtual {v2, v1, v3, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_4
    instance-of p1, p2, Lx1/c;

    if-eqz p1, :cond_1a

    check-cast p2, Lx1/c;

    iget-object p1, p2, Lx1/c;->a:Lf2/a;

    instance-of p2, p1, Lf2/i;

    const-string v7, "setBackgroundColor"

    if-eqz p2, :cond_5

    check-cast p1, Lf2/i;

    iget-wide p0, p1, Lf2/i;->a:J

    invoke-static {p0, p1}, Ls0/e;->e(J)I

    move-result p0

    invoke-virtual {v2, v1, v7, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_5
    instance-of p2, p1, Lf2/j;

    if-eqz p2, :cond_7

    check-cast p1, Lf2/j;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget p1, p1, Lf2/j;->a:I

    if-lt p0, v5, :cond_6

    invoke-static {v2, v1, v7, p1}, Landroidx/core/widget/m;->d(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v2, v1, v3, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_7
    instance-of p2, p1, LJ1/a;

    if-eqz p2, :cond_9

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_8

    check-cast p1, LJ1/a;

    iget-wide v3, p1, LJ1/a;->a:J

    invoke-static {v3, v4}, Ls0/e;->e(J)I

    move-result p0

    iget-wide p1, p1, LJ1/a;->b:J

    invoke-static {p1, p2}, Ls0/e;->e(J)I

    move-result p1

    invoke-static {v2, v1, v7, p0, p1}, Landroidx/core/widget/m;->f(Landroid/widget/RemoteViews;ILjava/lang/String;II)V

    goto/16 :goto_2

    :cond_8
    check-cast p1, LJ1/a;

    iget-object p0, p0, Lz1/x;->d:Landroid/content/Context;

    invoke-virtual {p1, p0}, LJ1/a;->a(Landroid/content/Context;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ls0/e;->e(J)I

    move-result p0

    invoke-virtual {v2, v1, v7, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected background color modifier: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v4, p0, v0}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    instance-of p1, p2, Lz1/U0;

    if-eqz p1, :cond_b

    check-cast p2, Lz1/U0;

    iget p0, p2, Lz1/U0;->a:I

    invoke-virtual {v2, v1, v3, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v5, :cond_1a

    iget-object p0, p2, Lz1/U0;->b:Lf2/a;

    invoke-static {v2, p0, v1}, LG5/L2;->a(Landroid/widget/RemoteViews;Lf2/a;I)V

    goto/16 :goto_2

    :cond_b
    instance-of p1, p2, Lz1/y;

    if-eqz p1, :cond_c

    check-cast p2, Lz1/y;

    const/4 p0, 0x0

    invoke-static {v2, p0, v1}, LG5/L2;->a(Landroid/widget/RemoteViews;Lf2/a;I)V

    goto/16 :goto_2

    :cond_c
    instance-of p1, p2, LK1/r;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lz1/x;->g:Ltb/w;

    iget-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p1, LK1/r;

    if-eqz p1, :cond_d

    check-cast p2, LK1/r;

    new-instance v7, LK1/r;

    iget-object v0, p1, LK1/r;->a:LK1/q;

    iget-object v1, p2, LK1/r;->a:LK1/q;

    invoke-virtual {v0, v1}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v1

    iget-object v0, p1, LK1/r;->b:LK1/q;

    iget-object v2, p2, LK1/r;->b:LK1/q;

    invoke-virtual {v0, v2}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v2

    iget-object v0, p1, LK1/r;->c:LK1/q;

    iget-object v3, p2, LK1/r;->c:LK1/q;

    invoke-virtual {v0, v3}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v3

    iget-object v0, p1, LK1/r;->d:LK1/q;

    iget-object v4, p2, LK1/r;->d:LK1/q;

    invoke-virtual {v0, v4}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v4

    iget-object v0, p1, LK1/r;->e:LK1/q;

    iget-object v5, p2, LK1/r;->e:LK1/q;

    invoke-virtual {v0, v5}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v5

    iget-object p1, p1, LK1/r;->f:LK1/q;

    iget-object p2, p2, LK1/r;->f:LK1/q;

    invoke-virtual {p1, p2}, LK1/q;->a(LK1/q;)LK1/q;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LK1/r;-><init>(LK1/q;LK1/q;LK1/q;LK1/q;LK1/q;LK1/q;)V

    goto :goto_0

    :cond_d
    move-object v7, p2

    check-cast v7, LK1/r;

    :goto_0
    iput-object v7, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    instance-of p1, p2, Lz1/M0;

    if-eqz p1, :cond_f

    iget-object p0, p0, Lz1/x;->h:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_f
    instance-of p1, p2, LD1/a;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lz1/x;->i:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_10
    instance-of p1, p2, LD1/b;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lz1/x;->j:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_11
    instance-of p1, p2, Lz1/G;

    if-eqz p1, :cond_12

    check-cast p2, Lz1/G;

    iget-object p0, p0, Lz1/x;->k:Ltb/w;

    iget-object p1, p2, Lz1/G;->a:Lf2/c;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_12
    instance-of p1, p2, Lz1/d;

    if-nez p1, :cond_1a

    instance-of p1, p2, Lz1/a;

    if-nez p1, :cond_1a

    instance-of p1, p2, Lz1/M;

    if-eqz p1, :cond_13

    iget-object p0, p0, Lz1/x;->m:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_13
    instance-of p1, p2, Lb2/b;

    if-eqz p1, :cond_14

    iget-object p0, p0, Lz1/x;->n:Ltb/w;

    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    instance-of p1, p2, Lz1/A0;

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    check-cast p2, Lz1/A0;

    iget p0, p2, Lz1/A0;->a:I

    iget-object p1, p2, Lz1/A0;->b:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v4, "getDeclaredMethods(...)"

    invoke-static {p2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_16

    aget-object v5, p2, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hidden_semSetStringTag"

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_16
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Array contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Le7/a;->a:Ljava/lang/String;

    const-string p1, " hidden_semSetStringTag isn\'t supported."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_17
    instance-of p1, p2, Lz1/b;

    if-eqz p1, :cond_18

    check-cast p2, Lz1/b;

    const-string p0, "setAlpha"

    iget p1, p2, Lz1/b;->a:F

    invoke-virtual {v2, v1, p0, p1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_2

    :cond_18
    instance-of p1, p2, Lz1/T0;

    if-eqz p1, :cond_19

    iget-object p0, p0, Lz1/x;->l:Lz1/f1;

    iget-boolean p0, p0, Lz1/f1;->p:Z

    if-eqz p0, :cond_1a

    check-cast p2, Lz1/T0;

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setScrollPosition(II)V

    goto :goto_2

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown modifier \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', nothing done."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v4, p0, v0}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
