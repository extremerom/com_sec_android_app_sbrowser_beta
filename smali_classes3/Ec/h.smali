.class public final LEc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LEc/h;

.field public static final c:LEc/h;

.field public static final d:LEc/h;

.field public static final e:LEc/h;

.field public static final f:LEc/h;

.field public static final g:LEc/h;

.field public static final h:LEc/h;

.field public static final i:LEc/h;

.field public static final j:LEc/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LEc/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->b:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->c:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->d:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->e:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->f:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->g:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->h:LEc/h;

    new-instance v0, LEc/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->i:LEc/h;

    new-instance v0, LEc/h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LEc/h;-><init>(I)V

    sput-object v0, LEc/h;->j:LEc/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LEc/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "$this$Checks"

    const/4 v3, 0x0

    const-string v4, "<this>"

    iget p0, p0, LEc/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LGb/i;

    sget-object p0, LEc/w;->c:LEc/w;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LGb/i;->x()Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LGb/i;

    sget-object p0, LEc/v;->c:LEc/v;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LGb/l;->INT:LGb/l;

    invoke-virtual {p1, p0}, LGb/i;->t(LGb/l;)Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LGb/i;

    sget-object p0, LEc/u;->c:LEc/u;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LGb/l;->BOOLEAN:LGb/l;

    invoke-virtual {p1, p0}, LGb/i;->t(LGb/l;)Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LJb/v;

    sget-object p0, LEc/s;->a:Ljava/util/List;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/b;->K()LMb/w;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, LJb/b;->N()LMb/w;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_8

    invoke-interface {p1}, LJb/b;->p()Lyc/w;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LMb/w;->getType()Lyc/w;

    move-result-object v4

    sget-object v5, Lzc/d;->a:Lzc/l;

    invoke-virtual {v5, v2, v4}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_9

    invoke-virtual {p0}, LMb/w;->U0()Lsc/d;

    move-result-object p0

    const-string v2, "getValue(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p0, Lsc/c;

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    move p0, v1

    goto :goto_3

    :cond_3
    check-cast p0, Lsc/c;

    iget-object p0, p0, Lsc/c;->a:LJb/f;

    invoke-interface {p0}, LJb/z;->g0()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object p0

    invoke-static {p0, v2}, LJb/y;->e(LJb/C;Lhc/b;)LJb/i;

    move-result-object p0

    instance-of v2, p0, LJb/V;

    if-eqz v2, :cond_6

    check-cast p0, LJb/V;

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_2
    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p1}, LJb/b;->p()Lyc/w;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p0, Lwc/t;

    invoke-virtual {p0}, Lwc/t;->V0()Lyc/A;

    move-result-object p0

    sget-object v2, Lzc/d;->a:Lzc/l;

    invoke-virtual {v2, p1, p0}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :cond_9
    :goto_4
    if-nez v0, :cond_a

    const-string v3, "receiver must be a supertype of the return type"

    :cond_a
    return-object v3

    :pswitch_3
    check-cast p1, LJb/v;

    sget-object p0, LEc/s;->a:Ljava/util/List;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p0

    const-string v2, "getContainingDeclaration(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, p0, LJb/f;

    if-eqz v4, :cond_b

    check-cast p0, LJb/f;

    sget-object v4, LGb/i;->e:Lhc/f;

    sget-object v4, LGb/p;->a:Lhc/d;

    invoke-static {p0, v4}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result p0

    if-eqz p0, :cond_b

    move p0, v0

    goto :goto_5

    :cond_b
    move p0, v1

    :goto_5
    if-nez p0, :cond_16

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    const-string v4, "getOverriddenDescriptors(...)"

    invoke-static {p0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/v;

    invoke-interface {v4}, LJb/l;->k()LJb/l;

    move-result-object v4

    invoke-static {v4, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v4, LJb/f;

    if-eqz v5, :cond_d

    check-cast v4, LJb/f;

    sget-object v5, LGb/i;->e:Lhc/f;

    sget-object v5, LGb/p;->a:Lhc/d;

    invoke-static {v4, v5}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_a

    :cond_e
    :goto_6
    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p0

    instance-of v4, p0, LJb/f;

    if-eqz v4, :cond_f

    check-cast p0, LJb/f;

    goto :goto_7

    :cond_f
    move-object p0, v3

    :goto_7
    if-eqz p0, :cond_14

    invoke-static {p0}, Lkc/i;->f(LJb/l;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    move-object p0, v3

    :goto_8
    if-eqz p0, :cond_14

    invoke-interface {p0}, LJb/f;->n()Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_9

    :cond_11
    invoke-interface {p1}, LJb/b;->p()Lyc/w;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_9

    :cond_12
    move-object v5, p1

    check-cast v5, LMb/n;

    invoke-virtual {v5}, LMb/n;->getName()Lhc/f;

    move-result-object v5

    sget-object v6, LEc/t;->d:Lhc/f;

    invoke-static {v5, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, LGb/i;->e:Lhc/f;

    sget-object v5, LGb/p;->h:Lhc/d;

    invoke-static {v4, v5}, LGb/i;->C(Lyc/w;Lhc/d;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {v4}, LGb/i;->F(Lyc/w;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    invoke-interface {p1}, LJb/b;->H()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_14

    invoke-interface {p1}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    check-cast v0, LMb/U;

    invoke-virtual {v0}, LMb/U;->getType()Lyc/w;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object v0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-interface {p1}, LJb/b;->r0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-interface {p1}, LJb/b;->N()LMb/w;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_a

    :cond_14
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "must override \'\'equals()\'\' in Any"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkc/i;->f(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Ljc/j;->d:Ljc/j;

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LJb/f;

    invoke-interface {p1}, LJb/f;->n()Lyc/A;

    move-result-object p1

    const-string v1, "getDefaultType(...)"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " or define \'\'equals(other: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Boolean\'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_16
    :goto_a
    return-object v3

    :pswitch_4
    check-cast p1, LJb/v;

    sget-object p0, LEc/s;->a:Ljava/util/List;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/b;->H()Ljava/util/List;

    move-result-object p0

    const-string p1, "getValueParameters(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/T;

    if-eqz p0, :cond_17

    invoke-static {p0}, Loc/d;->a(LMb/T;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p0, p0, LMb/T;->k:Lyc/w;

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    const-string v3, "last parameter should not have a default value or be a vararg"

    :goto_b
    return-object v3

    :pswitch_5
    check-cast p1, LJb/v;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_6
    check-cast p1, LJb/v;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_7
    check-cast p1, LJb/v;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

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
