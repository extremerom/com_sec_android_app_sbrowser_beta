.class public final LAc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/P;


# instance fields
.field public final synthetic a:LMb/J;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LAc/l;->a:LAc/l;

    sget-object v1, LAc/l;->c:LAc/a;

    sget-object v2, LJb/B;->OPEN:LJb/B;

    sget-object v3, LJb/q;->e:LJb/p;

    sget-object v0, LAc/b;->ERROR_PROPERTY:LAc/b;

    invoke-virtual {v0}, LAc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    sget-object v6, LJb/c;->DECLARATION:LJb/c;

    sget-object v7, LJb/S;->L:LJb/T;

    const/4 v4, 0x1

    invoke-static/range {v1 .. v7}, LMb/J;->V0(LJb/f;LJb/B;LJb/p;ZLhc/f;LJb/c;LJb/S;)LMb/J;

    move-result-object v0

    sget-object v9, LAc/l;->e:LAc/i;

    sget-object v13, Lfb/v;->a:Lfb/v;

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    move-object v10, v13

    invoke-virtual/range {v8 .. v13}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    iput-object v0, p0, LAc/f;->a:LMb/J;

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-boolean p0, p0, LMb/J;->s:Z

    return p0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/U;->H()Ljava/util/List;

    move-result-object p0

    const-string v0, "getValueParameters(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final K()LMb/w;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->u:LMb/w;

    return-object p0
.end method

.method public final M()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-boolean p0, p0, LMb/J;->g:Z

    return p0
.end method

.method public final N()LMb/w;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->v:LMb/w;

    return-object p0
.end method

.method public final O()LMb/t;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->A:LMb/t;

    return-object p0
.end method

.method public final U()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->W()Z

    move-result p0

    return p0
.end method

.method public final Y()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->Y()Z

    move-result p0

    return p0
.end method

.method public final a()LJb/P;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->a()LJb/P;

    move-result-object p0

    const-string v0, "getOriginal(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic a()LJb/b;
    .locals 0

    invoke-virtual {p0}, LAc/f;->a()LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/d;
    .locals 0

    invoke-virtual {p0}, LAc/f;->a()LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/l;
    .locals 0

    invoke-virtual {p0}, LAc/f;->a()LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, p2}, LJb/n;->u(LMb/J;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()LMb/K;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->x:LMb/K;

    return-object p0
.end method

.method public final c()LMb/L;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->y:LMb/L;

    return-object p0
.end method

.method public final d()LJb/c;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->d()LJb/c;

    move-result-object p0

    const-string v0, "getKind(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/o;->e()LJb/S;

    move-result-object p0

    const-string v0, "getSource(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e0()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lyc/Y;)LJb/P;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0, p1}, LMb/J;->f(Lyc/Y;)LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic f(Lyc/Y;)LJb/m;
    .locals 0

    invoke-virtual {p0, p1}, LAc/f;->f(Lyc/Y;)LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final g0()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-boolean p0, p0, LMb/J;->q:Z

    return p0
.end method

.method public final getName()Lhc/f;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getType()Lyc/w;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    const-string v0, "getType(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getVisibility()LJb/p;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->getVisibility()LJb/p;

    move-result-object p0

    const-string v0, "getVisibility(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/o;->k()LJb/l;

    move-result-object p0

    const-string v0, "getContainingDeclaration(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k0()Lmc/g;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->k0()Lmc/g;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->l()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getOverriddenDescriptors(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l0(LJb/f;LJb/B;LJb/p;LJb/c;)LJb/d;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0, p1, p2, p3, p4}, LMb/J;->U0(LJb/f;LJb/B;LJb/p;LJb/c;)LMb/J;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m0(LJb/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Lyc/w;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->p()Lyc/w;

    move-result-object p0

    return-object p0
.end method

.method public final p0()LMb/t;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-object p0, p0, LMb/J;->z:LMb/t;

    return-object p0
.end method

.method public final r()LJb/B;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->r()LJb/B;

    move-result-object p0

    const-string v0, "getModality(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r0()Ljava/util/List;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->r0()Ljava/util/List;

    move-result-object p0

    const-string v0, "getContextReceiverParameters(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s0()Z
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iget-boolean p0, p0, LMb/J;->o:Z

    return p0
.end method

.method public final u()LKb/h;
    .locals 1

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LF3/f;->u()LKb/h;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    invoke-virtual {p0}, LMb/J;->v()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final v0(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, LAc/f;->a:LMb/J;

    iput-object p1, p0, LMb/J;->l:Ljava/util/Collection;

    return-void
.end method
