.class public final LWb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LWb/m;->a:I

    iput-object p2, p0, LWb/m;->b:Ljava/lang/Object;

    iput-object p3, p0, LWb/m;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LMb/M;LWb/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LWb/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/m;->c:Ljava/lang/Object;

    iput-object p2, p0, LWb/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const/4 v2, 0x1

    const-string v3, "name"

    const/4 v4, 0x0

    iget-object v5, p0, LWb/m;->c:Ljava/lang/Object;

    iget-object v6, p0, LWb/m;->b:Ljava/lang/Object;

    iget p0, p0, LWb/m;->a:I

    packed-switch p0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Lhc/f;

    invoke-static {v9, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/google/firebase/messaging/q;

    iget-object p0, v6, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcc/v;

    if-eqz p0, :cond_0

    move-object v8, v5

    check-cast v8, Lwc/i;

    iget-object p1, v8, Lwc/i;->l:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object v7, p1, Luc/k;->a:Lxc/o;

    iget-object p1, v6, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lxc/i;

    new-instance v11, Lwc/a;

    iget-object p1, v8, Lwc/i;->l:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    new-instance v0, LDb/J;

    const/16 v1, 0x12

    invoke-direct {v0, v1, v8, p0}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, p1, v0}, Lwc/a;-><init>(Lxc/o;Lsb/a;)V

    sget-object v12, LJb/S;->L:LJb/T;

    invoke-static/range {v7 .. v12}, LMb/s;->D0(Lxc/o;LJb/f;Lhc/f;Lxc/i;LKb/h;LJb/S;)LMb/s;

    move-result-object v4

    :cond_0
    return-object v4

    :pswitch_0
    check-cast p1, LJb/d;

    check-cast v6, Lkc/p;

    check-cast v5, LJb/d;

    const-string p0, "second"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5, p1}, Lkc/p;->d(LJb/d;LJb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast v6, LZb/q;

    if-eqz v6, :cond_1

    iget-object p1, v6, LZb/q;->a:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZb/d;

    if-nez p1, :cond_3

    :cond_1
    if-ltz p0, :cond_2

    check-cast v5, [LZb/d;

    array-length p1, v5

    if-ge p0, p1, :cond_2

    aget-object p1, v5, p0

    goto :goto_0

    :cond_2
    sget-object p1, LZb/d;->e:LZb/d;

    :cond_3
    :goto_0
    return-object p1

    :pswitch_2
    const-string p0, "$this$extractNullability"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, LZb/a;

    check-cast v6, LT2/c;

    check-cast p1, LKb/b;

    instance-of p0, p1, LUb/i;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, LUb/i;

    :cond_4
    instance-of p0, p1, LWb/f;

    iget-object v0, v6, LT2/c;->d:Ljava/lang/Object;

    check-cast v0, Lo3/i;

    if-eqz p0, :cond_5

    iget-object p0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->t:LVb/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, LWb/f;

    iget-boolean p0, p0, LWb/f;->g:Z

    if-nez p0, :cond_a

    sget-object p0, LSb/b;->TYPE_PARAMETER_BOUNDS:LSb/b;

    iget-object v1, v6, LT2/c;->e:Ljava/lang/Object;

    check-cast v1, LSb/b;

    if-eq v1, p0, :cond_a

    :cond_5
    const/4 p0, 0x0

    iget-object v1, v5, LZb/a;->a:LBc/d;

    if-eqz v1, :cond_9

    check-cast v1, Lyc/w;

    sget-object v3, LGb/i;->e:Lhc/f;

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->c()LJb/i;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1}, LGb/i;->s(LJb/i;)LGb/l;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->q:LSb/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LGb/p;->t:Lhc/c;

    invoke-static {p1, v1}, LSb/c;->d(Ljava/lang/Object;Lhc/c;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p0}, LSb/c;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "TYPE"

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->t:LVb/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_9
    :goto_1
    move v2, p0

    :cond_a
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LWb/t;

    const-string p0, "request"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lhc/b;

    check-cast v6, LWb/x;

    iget-object v2, v6, LWb/x;->o:LWb/s;

    iget-object v2, v2, LMb/D;->f:Lhc/c;

    iget-object v3, p1, LWb/t;->a:Lhc/f;

    invoke-direct {p0, v2, v3}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    check-cast v5, Lo3/i;

    const-string v2, "metadataVersion"

    iget-object v3, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v3, LVb/a;

    iget-object p1, p1, LWb/t;->b:LPb/n;

    if-eqz p1, :cond_d

    invoke-virtual {v6}, LWb/x;->w()Lec/f;

    move-result-object v7

    iget-object v8, v3, LVb/a;->c:Lo3/f;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LPb/n;->c()Lhc/c;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, v7, Lhc/c;->a:Lhc/d;

    iget-object v7, v7, Lhc/d;->a:Ljava/lang/String;

    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    iget-object v8, v8, Lo3/f;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/ClassLoader;

    invoke-static {v8, v7}, Lqd/d;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-static {v7}, Lqd/l;->a(Ljava/lang/Class;)LOb/b;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v8, LB3/c;

    invoke-direct {v8, v7}, LB3/c;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    :goto_3
    move-object v8, v4

    goto :goto_4

    :cond_d
    invoke-virtual {v6}, LWb/x;->w()Lec/f;

    move-result-object v7

    iget-object v8, v3, LVb/a;->c:Lo3/f;

    invoke-virtual {v8, p0, v7}, Lo3/f;->l(Lhc/b;Lec/f;)LB3/c;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_e

    iget-object v7, v8, LB3/c;->a:Ljava/lang/Object;

    check-cast v7, LOb/b;

    goto :goto_5

    :cond_e
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_f

    iget-object v8, v7, LOb/b;->a:Ljava/lang/Class;

    invoke-static {v8}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v8

    goto :goto_6

    :cond_f
    move-object v8, v4

    :goto_6
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lhc/b;->g()Z

    move-result v9

    if-nez v9, :cond_20

    iget-boolean v8, v8, Lhc/b;->c:Z

    if-eqz v8, :cond_10

    goto/16 :goto_e

    :cond_10
    sget-object v8, LWb/v;->a:LWb/v;

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    iget-object v9, v7, LOb/b;->b:Lbc/c;

    sget-object v10, Lbc/b;->CLASS:Lbc/b;

    iget-object v9, v9, Lbc/c;->c:Ljava/lang/Object;

    check-cast v9, Lbc/b;

    if-ne v9, v10, :cond_13

    iget-object v9, v6, LWb/B;->b:Lo3/i;

    iget-object v9, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v9, LVb/a;

    iget-object v9, v9, LVb/a;->d:Lac/f;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v7}, Lac/f;->g(LOb/b;)Luc/f;

    move-result-object v10

    if-nez v10, :cond_12

    move-object v7, v4

    goto :goto_7

    :cond_12
    invoke-virtual {v9}, Lac/f;->c()Luc/k;

    move-result-object v9

    iget-object v7, v7, LOb/b;->a:Ljava/lang/Class;

    invoke-static {v7}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v7

    iget-object v9, v9, Luc/k;->t:Luc/i;

    invoke-virtual {v9, v7, v10}, Luc/i;->a(Lhc/b;Luc/f;)LJb/f;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_14

    new-instance v8, LWb/u;

    invoke-direct {v8, v7}, LWb/u;-><init>(LJb/f;)V

    goto :goto_8

    :cond_13
    sget-object v8, LWb/w;->a:LWb/w;

    :cond_14
    :goto_8
    instance-of v7, v8, LWb/u;

    if-eqz v7, :cond_15

    check-cast v8, LWb/u;

    iget-object v4, v8, LWb/u;->a:LJb/f;

    goto/16 :goto_e

    :cond_15
    instance-of v7, v8, LWb/w;

    if-eqz v7, :cond_16

    goto/16 :goto_e

    :cond_16
    instance-of v7, v8, LWb/v;

    if-eqz v7, :cond_21

    if-nez p1, :cond_19

    iget-object p1, v3, LVb/a;->b:LB3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lhc/b;->b:Lhc/c;

    iget-object v7, v7, Lhc/c;->a:Lhc/d;

    iget-object v7, v7, Lhc/d;->a:Ljava/lang/String;

    invoke-static {v7, v1, v0}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lhc/b;->a:Lhc/c;

    iget-object v8, v7, Lhc/c;->a:Lhc/d;

    invoke-virtual {v8}, Lhc/d;->c()Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_9

    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lhc/c;->a:Lhc/d;

    iget-object v7, v7, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    iget-object p1, p1, LB3/c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lqd/d;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance v0, LPb/n;

    invoke-direct {v0, p1}, LPb/n;-><init>(Ljava/lang/Class;)V

    move-object p1, v0

    goto :goto_a

    :cond_18
    move-object p1, v4

    :cond_19
    :goto_a
    sget-object v0, LYb/f;->BINARY:LYb/f;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\nJavaClass: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nClassId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nfindKotlinClass(JavaClass) = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, LWb/x;->w()Lec/f;

    move-result-object v5

    const-string v7, "<this>"

    iget-object v8, v3, LVb/a;->c:Lo3/f;

    invoke-static {v8, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "javaClass"

    invoke-static {p1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LPb/n;->c()Lhc/c;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    iget-object p1, p1, Lhc/d;->a:Ljava/lang/String;

    if-nez p1, :cond_1a

    goto :goto_b

    :cond_1a
    iget-object v2, v8, Lo3/f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ClassLoader;

    invoke-static {v2, p1}, Lqd/d;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-static {p1}, Lqd/l;->a(Ljava/lang/Class;)LOb/b;

    move-result-object p1

    if-eqz p1, :cond_1b

    new-instance v2, LB3/c;

    invoke-direct {v2, p1}, LB3/c;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1b
    :goto_b
    move-object v2, v4

    :goto_c
    if-eqz v2, :cond_1c

    iget-object p1, v2, LB3/c;->a:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, LOb/b;

    :cond_1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nfindKotlinClass(ClassId) = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, LWb/x;->w()Lec/f;

    move-result-object p1

    iget-object v2, v3, LVb/a;->c:Lo3/f;

    invoke-static {v2, p0, p1}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, LPb/n;->c()Lhc/c;

    move-result-object p0

    goto :goto_d

    :cond_1e
    move-object p0, v4

    :goto_d
    if-eqz p0, :cond_20

    iget-object v0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object p0

    iget-object v0, v6, LWb/x;->o:LWb/s;

    iget-object v1, v0, LMb/D;->f:Lhc/c;

    invoke-virtual {p0, v1}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_e

    :cond_1f
    new-instance p0, LWb/j;

    invoke-direct {p0, v5, v0, p1, v4}, LWb/j;-><init>(Lo3/i;LJb/l;LPb/n;LJb/f;)V

    iget-object p1, v3, LVb/a;->s:LSb/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    :cond_20
    :goto_e
    return-object v4

    :cond_21
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_4
    check-cast p1, Lhc/f;

    const-string p0, "accessorName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, LMb/M;

    invoke-virtual {v5}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {v5}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_f

    :cond_22
    check-cast v6, LWb/p;

    invoke-virtual {v6, p1}, LWb/p;->N(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v6, p1}, LWb/p;->O(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_f
    return-object p0

    :pswitch_5
    move-object p0, p1

    check-cast p0, Lhc/f;

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, LWb/p;

    iget-object p1, v6, LWb/p;->r:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object v3, v6, LWb/p;->n:LJb/f;

    check-cast v5, Lo3/i;

    if-eqz p1, :cond_25

    iget-object p1, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    invoke-static {v3}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object p0

    iget-object p1, p1, LVb/a;->b:LB3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lhc/b;->b:Lhc/c;

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    iget-object v2, v2, Lhc/d;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lhc/b;->a:Lhc/c;

    iget-object v2, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_10

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    iget-object p0, p1, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ClassLoader;

    invoke-static {p0, v0}, Lqd/d;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_24

    new-instance p1, LPb/n;

    invoke-direct {p1, p0}, LPb/n;-><init>(Ljava/lang/Class;)V

    goto :goto_11

    :cond_24
    move-object p1, v4

    :goto_11
    if-eqz p1, :cond_28

    new-instance p0, LWb/j;

    invoke-direct {p0, v5, v3, p1, v4}, LWb/j;-><init>(Lo3/i;LJb/l;LPb/n;LJb/f;)V

    iget-object p1, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->s:LSb/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    goto/16 :goto_12

    :cond_25
    iget-object p1, v6, LWb/p;->s:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object p1

    iget-object v0, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->x:Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, v3, p0, p1, v5}, Lpc/a;->c(LJb/f;Lhc/f;Lgb/c;Lo3/i;)V

    invoke-static {p1}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object p0

    invoke-virtual {p0}, Lfb/g;->g()I

    move-result p1

    if-eqz p1, :cond_28

    if-ne p1, v2, :cond_26

    invoke-static {p0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, LJb/f;

    goto :goto_12

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multiple classes with same name are generated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object p1, v6, LWb/p;->t:Lxc/i;

    invoke-virtual {p1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LPb/t;

    if-eqz p1, :cond_28

    iget-object v0, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->a:Lxc/l;

    new-instance v1, LWb/l;

    const/4 v2, 0x2

    invoke-direct {v1, v6, v2}, LWb/l;-><init>(LWb/p;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lxc/i;

    invoke-direct {v3, v0, v1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iget-object v0, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v1, v0, LVb/a;->a:Lxc/l;

    invoke-static {v5, p1}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v4

    iget-object v0, v0, LVb/a;->j:LOb/d;

    invoke-virtual {v0, p1}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v5

    iget-object p1, v6, LWb/p;->n:LJb/f;

    move-object v0, v1

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, LMb/s;->D0(Lxc/o;LJb/f;Lhc/f;Lxc/i;LKb/h;LJb/S;)LMb/s;

    move-result-object v4

    :cond_28
    :goto_12
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
