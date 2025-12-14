.class public final Lz1/X;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Lz1/X;

.field public static final c:Lz1/X;

.field public static final d:Lz1/X;

.field public static final e:Lz1/X;

.field public static final f:Lz1/X;

.field public static final g:Lz1/X;

.field public static final h:Lz1/X;

.field public static final i:Lz1/X;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->b:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->c:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->d:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->e:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->f:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->g:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->h:Lz1/X;

    new-instance v0, Lz1/X;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lz1/X;-><init>(II)V

    sput-object v0, Lz1/X;->i:Lz1/X;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lz1/X;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lz1/X;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ly1/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lx1/e;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lx1/l;

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LB1/b;

    if-eqz p0, :cond_0

    move-object v0, p1

    check-cast v0, LB1/b;

    new-instance v1, LK1/l;

    invoke-direct {v1}, LK1/l;-><init>()V

    iget-object v2, v1, Lx1/n;->c:Ljava/util/ArrayList;

    iget-object v3, v0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, LB1/b;->d:LK1/c;

    const-string v4, "<set-?>"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, LK1/l;->e:LK1/c;

    iget-object v2, v0, LB1/b;->e:Lx1/r;

    invoke-virtual {v1, v2}, LK1/l;->a(Lx1/r;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, LK1/c;->d:LK1/c;

    iput-object v1, v0, LB1/b;->d:LK1/c;

    :cond_0
    if-nez p0, :cond_e

    instance-of p0, p1, Lz1/L;

    if-eqz p0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object p0

    new-instance v0, Lm9/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lm9/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Lx1/r;->b(Lsb/k;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_7

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object v1

    sget-object v2, Lz1/X;->g:Lz1/X;

    invoke-interface {v1, v2}, Lx1/r;->b(Lsb/k;)Z

    move-result v2

    sget-object v3, Lx1/p;->a:Lx1/p;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Ldb/j;

    invoke-direct {v2, v4, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lz1/y0;->s:Lz1/y0;

    invoke-interface {v1, v2, v5}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb/j;

    goto :goto_0

    :cond_3
    new-instance v2, Ldb/j;

    invoke-direct {v2, v4, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, Lx1/e;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    if-eqz v2, :cond_6

    instance-of v5, v2, Lx1/d;

    if-eqz v5, :cond_5

    new-instance v5, Lx1/m;

    invoke-direct {v5}, Lx1/m;-><init>()V

    invoke-static {v3}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v6

    iput-object v6, v5, Lx1/m;->a:Lx1/r;

    check-cast v2, Lx1/d;

    iget-object v6, v2, Lx1/d;->a:Lx1/a;

    iput-object v6, v5, Lx1/m;->b:Lx1/u;

    iget v6, v2, Lx1/d;->b:I

    iput v6, v5, Lx1/m;->d:I

    iget-object v2, v2, Lx1/d;->c:Lx1/g;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lx1/g;->a:Lx1/v;

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    iput-object v2, v5, Lx1/m;->c:Lx1/v;

    goto :goto_2

    :cond_5
    instance-of v5, v2, Lx1/c;

    if-eqz v5, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v5, v4

    :goto_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v6, Lz1/y0;->u:Lz1/y0;

    invoke-interface {v1, v2, v6}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_7

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    const-string v7, " More than one clickable defined on the same GlanceModifier, only the last one will be used."

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "GWT:CompositionTree"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v2, Lz1/X;->h:Lz1/X;

    invoke-interface {v1, v2}, Lx1/r;->b(Lsb/k;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ldb/j;

    invoke-direct {v2, v4, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lz1/y0;->t:Lz1/y0;

    invoke-interface {v1, v2, v7}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb/j;

    goto :goto_3

    :cond_8
    new-instance v2, Ldb/j;

    invoke-direct {v2, v4, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    iget-object v2, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, Ly1/b;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_a

    instance-of v7, p1, Lz1/J;

    if-nez v7, :cond_a

    iget-boolean v7, v2, Ly1/b;->c:Z

    if-nez v7, :cond_a

    iget v2, v2, Ly1/b;->b:I

    if-eqz v2, :cond_9

    new-instance v7, Lx1/a;

    invoke-direct {v7, v2}, Lx1/a;-><init>(I)V

    goto :goto_4

    :cond_9
    new-instance v7, Lx1/a;

    const v2, 0x7f08020d

    invoke-direct {v7, v2}, Lx1/a;-><init>(I)V

    :goto_4
    new-instance v2, Lx1/m;

    invoke-direct {v2}, Lx1/m;-><init>()V

    invoke-static {v3}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v3

    iput-object v3, v2, Lx1/m;->a:Lx1/r;

    iput-object v7, v2, Lx1/m;->b:Lx1/u;

    goto :goto_5

    :cond_a
    move-object v2, v4

    :goto_5
    sget-object v3, Lz1/X;->e:Lz1/X;

    invoke-interface {v1, v3}, Lx1/r;->b(Lsb/k;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lz1/N;

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6}, Lz1/N;-><init>(Lx1/r;I)V

    sget-object v4, Lz1/y0;->n:Lz1/y0;

    invoke-interface {v1, v3, v4}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/N;

    goto :goto_6

    :cond_b
    new-instance v3, Lz1/N;

    invoke-direct {v3, v1, v6}, Lz1/N;-><init>(Lx1/r;I)V

    move-object v1, v3

    :goto_6
    iget-object v3, v1, Lz1/N;->a:Lx1/r;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lz1/N;->b:Lx1/r;

    invoke-static {v1}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LK1/l;

    invoke-direct {v1}, LK1/l;-><init>()V

    invoke-static {p0}, LG5/V2;->b(Ljava/util/ArrayList;)Lx1/r;

    move-result-object p0

    iput-object p0, v1, LK1/l;->d:Lx1/r;

    invoke-static {v0}, LG5/V2;->b(Ljava/util/ArrayList;)Lx1/r;

    move-result-object p0

    invoke-interface {p1, p0}, Lx1/l;->a(Lx1/r;)V

    iget-object p0, v1, Lx1/n;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_d

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object p1, v1

    :cond_e
    :goto_7
    return-object p1

    :pswitch_3
    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LK1/w;

    if-nez p0, :cond_10

    instance-of p0, p1, LK1/p;

    if-nez p0, :cond_10

    instance-of p0, p1, Lz1/G;

    if-eqz p0, :cond_f

    goto :goto_8

    :cond_f
    const/4 p0, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 p0, 0x1

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ly1/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lx1/q;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lz1/d;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lm1/a;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LG5/n;->b()Lp1/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
