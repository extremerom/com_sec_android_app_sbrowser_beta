.class public final LMb/P;
.super LMb/v;
.source "SourceFile"

# interfaces
.implements LMb/O;


# static fields
.field public static final H:LMb/E;


# instance fields
.field public final E:Lxc/o;

.field public final F:LJb/V;

.field public G:LMb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LMb/P;

    const-string v2, "withDispatchReceiver"

    const-string v3, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    new-instance v0, LMb/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LMb/P;->H:LMb/E;

    return-void
.end method

.method public constructor <init>(Lxc/o;LJb/V;LMb/j;LMb/O;LKb/h;LJb/c;LJb/S;)V
    .locals 7

    sget-object v6, Lhc/h;->e:Lhc/f;

    move-object v0, p0

    move-object v1, p6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p7

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, LMb/v;-><init>(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)V

    iput-object p1, p0, LMb/P;->E:Lxc/o;

    iput-object p2, p0, LMb/P;->F:LJb/V;

    new-instance p2, LDb/J;

    const/16 p4, 0x9

    invoke-direct {p2, p4, p0, p3}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lxc/h;

    invoke-direct {p4, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, LMb/P;->G:LMb/j;

    return-void
.end method


# virtual methods
.method public final bridge synthetic T0()LJb/m;
    .locals 0

    invoke-virtual {p0}, LMb/P;->f1()LMb/O;

    move-result-object p0

    return-object p0
.end method

.method public final W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 8

    const-string p3, "newOwner"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "annotations"

    invoke-static {p5, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LJb/c;->DECLARATION:LJb/c;

    if-eq p1, v6, :cond_0

    sget-object p2, LJb/c;->SYNTHESIZED:LJb/c;

    :cond_0
    new-instance p1, LMb/P;

    iget-object v3, p0, LMb/P;->G:LMb/j;

    iget-object v1, p0, LMb/P;->E:Lxc/o;

    iget-object v2, p0, LMb/P;->F:LJb/V;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, LMb/P;-><init>(Lxc/o;LJb/V;LMb/j;LMb/O;LKb/h;LJb/c;LJb/S;)V

    return-object p1
.end method

.method public final Z()Z
    .locals 0

    iget-object p0, p0, LMb/P;->G:LMb/j;

    iget-boolean p0, p0, LMb/j;->E:Z

    return p0
.end method

.method public final bridge synthetic a()LJb/b;
    .locals 0

    invoke-virtual {p0}, LMb/P;->f1()LMb/O;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/d;
    .locals 0

    invoke-virtual {p0}, LMb/P;->f1()LMb/O;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/l;
    .locals 0

    invoke-virtual {p0}, LMb/P;->f1()LMb/O;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/v;
    .locals 0

    invoke-virtual {p0}, LMb/P;->f1()LMb/O;

    move-result-object p0

    return-object p0
.end method

.method public final b0()LJb/f;
    .locals 1

    iget-object p0, p0, LMb/P;->G:LMb/j;

    invoke-virtual {p0}, LMb/j;->b0()LJb/f;

    move-result-object p0

    const-string v0, "getConstructedClass(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic f(Lyc/Y;)LJb/m;
    .locals 0

    invoke-virtual {p0, p1}, LMb/P;->g1(Lyc/Y;)LMb/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic f(Lyc/Y;)LJb/v;
    .locals 0

    invoke-virtual {p0, p1}, LMb/P;->g1(Lyc/Y;)LMb/P;

    move-result-object p0

    return-object p0
.end method

.method public final f1()LMb/O;
    .locals 1

    invoke-super {p0}, LMb/v;->a()LJb/v;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LMb/O;

    return-object p0
.end method

.method public final g1(Lyc/Y;)LMb/P;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LMb/v;->f(Lyc/Y;)LJb/v;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LMb/P;

    iget-object v0, p1, LMb/v;->h:Lyc/w;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lyc/Y;->d(Lyc/w;)Lyc/Y;

    move-result-object v0

    iget-object p0, p0, LMb/P;->G:LMb/j;

    invoke-virtual {p0}, LMb/j;->h1()LMb/j;

    move-result-object p0

    invoke-virtual {p0, v0}, LMb/j;->k1(Lyc/Y;)LMb/j;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput-object p0, p1, LMb/P;->G:LMb/j;

    return-object p1
.end method

.method public final k()LJb/j;
    .locals 0

    iget-object p0, p0, LMb/P;->F:LJb/V;

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    iget-object p0, p0, LMb/P;->F:LJb/V;

    return-object p0
.end method

.method public final l0(LJb/f;LJb/B;LJb/p;LJb/c;)LJb/d;
    .locals 1

    const-string v0, "newOwner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {p0, v0}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object p0

    iput-object p1, p0, LMb/u;->b:LJb/l;

    iput-object p2, p0, LMb/u;->c:LJb/B;

    iput-object p3, p0, LMb/u;->d:LJb/p;

    iput-object p4, p0, LMb/u;->f:LJb/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, LMb/u;->m:Z

    iget-object p1, p0, LMb/u;->x:LMb/v;

    invoke-virtual {p1, p0}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LMb/O;

    return-object p0
.end method

.method public final p()Lyc/w;
    .locals 0

    iget-object p0, p0, LMb/v;->h:Lyc/w;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method
