.class public final Ljc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Ljc/d;

.field public static final c:Ljc/d;

.field public static final d:Ljc/d;

.field public static final e:Ljc/d;

.field public static final f:Ljc/d;

.field public static final g:Ljc/d;

.field public static final h:Ljc/d;

.field public static final i:Ljc/d;

.field public static final j:Ljc/d;

.field public static final k:Ljc/d;

.field public static final l:Ljc/d;

.field public static final m:Ljc/d;

.field public static final n:Ljc/d;

.field public static final o:Ljc/d;

.field public static final p:Ljc/d;

.field public static final q:Ljc/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljc/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->b:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->c:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->d:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->e:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->f:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->g:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->h:Ljc/d;

    new-instance v0, Ljc/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->i:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->j:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->k:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->l:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->m:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->n:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->o:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->p:Ljc/d;

    new-instance v0, Ljc/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljc/d;-><init>(I)V

    sput-object v0, Ljc/d;->q:Ljc/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljc/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "it"

    sget-object v1, Lfb/x;->a:Lfb/x;

    sget-object v2, Ldb/r;->a:Ldb/r;

    const-string v3, "$this$withOptions"

    iget p0, p0, Ljc/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LMb/T;

    sget-object p0, Ljc/o;->Y:[LAb/u;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "..."

    return-object p0

    :pswitch_0
    check-cast p1, Lyc/w;

    sget-object p0, Ljc/o;->Y:[LAb/u;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->h()Ljava/util/Set;

    move-result-object p0

    sget-object v0, LGb/p;->p:Lhc/c;

    sget-object v1, LGb/p;->q:Lhc/c;

    filled-new-array {v0, v1}, [Lhc/c;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-interface {p1, p0}, Ljc/m;->l(Ljava/util/LinkedHashSet;)V

    return-object v2

    :pswitch_2
    check-cast p1, LMb/T;

    sget-object p0, Ljc/j;->c:Ljc/j;

    const-string p0, ""

    return-object p0

    :pswitch_3
    check-cast p1, Lyc/w;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_4
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->j()V

    sget-object p0, Ljc/b;->b:Ljc/b;

    invoke-interface {p1, p0}, Ljc/m;->f(Ljc/c;)V

    sget-object p0, Ljc/l;->ALL:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    :pswitch_5
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljc/b;->c:Ljc/b;

    invoke-interface {p1, p0}, Ljc/m;->f(Ljc/c;)V

    sget-object p0, Ljc/s;->ONLY_NON_SYNTHESIZED:Ljc/s;

    invoke-interface {p1, p0}, Ljc/m;->c(Ljc/s;)V

    return-object v2

    :pswitch_6
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljc/l;->ALL:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    :pswitch_7
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljc/l;->ALL_EXCEPT_ANNOTATIONS:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    :pswitch_8
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->m()V

    invoke-interface {p1, v1}, Ljc/m;->k(Ljava/util/Set;)V

    sget-object p0, Ljc/b;->c:Ljc/b;

    invoke-interface {p1, p0}, Ljc/m;->f(Ljc/c;)V

    invoke-interface {p1}, Ljc/m;->d()V

    sget-object p0, Ljc/s;->NONE:Ljc/s;

    invoke-interface {p1, p0}, Ljc/m;->c(Ljc/s;)V

    invoke-interface {p1}, Ljc/m;->a()V

    invoke-interface {p1}, Ljc/m;->b()V

    invoke-interface {p1}, Ljc/m;->i()V

    invoke-interface {p1}, Ljc/m;->g()V

    return-object v2

    :pswitch_9
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljc/m;->k(Ljava/util/Set;)V

    sget-object p0, Ljc/b;->c:Ljc/b;

    invoke-interface {p1, p0}, Ljc/m;->f(Ljc/c;)V

    sget-object p0, Ljc/s;->ONLY_NON_SYNTHESIZED:Ljc/s;

    invoke-interface {p1, p0}, Ljc/m;->c(Ljc/s;)V

    return-object v2

    :pswitch_a
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->m()V

    invoke-interface {p1, v1}, Ljc/m;->k(Ljava/util/Set;)V

    invoke-interface {p1}, Ljc/m;->i()V

    return-object v2

    :pswitch_b
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->m()V

    invoke-interface {p1, v1}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    :pswitch_c
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljc/m;->m()V

    return-object v2

    :pswitch_d
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljc/w;->HTML:Ljc/w;

    invoke-interface {p1, p0}, Ljc/m;->e(Ljc/w;)V

    sget-object p0, Ljc/l;->ALL:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    :pswitch_e
    check-cast p1, Ljc/m;

    sget-object p0, Ljc/j;->c:Ljc/j;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljc/m;->k(Ljava/util/Set;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
