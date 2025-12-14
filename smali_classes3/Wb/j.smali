.class public final LWb/j;
.super LMb/k;
.source "SourceFile"

# interfaces
.implements LUb/c;


# instance fields
.field public final g:Lo3/i;

.field public final h:LPb/n;

.field public final i:LJb/f;

.field public final j:Lo3/i;

.field public final k:Ldb/o;

.field public final l:LJb/g;

.field public final m:LJb/B;

.field public final n:LJb/k0;

.field public final o:Z

.field public final p:LWb/h;

.field public final q:LWb/p;

.field public final r:LJb/Q;

.field public final s:Lrc/i;

.field public final t:LWb/E;

.field public final u:LVb/c;

.field public final v:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "notifyAll"

    const-string v6, "toString"

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo3/i;LJb/l;LPb/n;LJb/f;)V
    .locals 7

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v1, v0, LVb/a;->a:Lxc/l;

    invoke-virtual {p3}, LPb/n;->e()Lhc/f;

    move-result-object v2

    iget-object v0, v0, LVb/a;->j:LOb/d;

    invoke-virtual {v0, p3}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v0

    invoke-direct {p0, v1, p2, v2, v0}, LMb/k;-><init>(Lxc/o;LJb/l;Lhc/f;LJb/S;)V

    iput-object p1, p0, LWb/j;->g:Lo3/i;

    iput-object p3, p0, LWb/j;->h:LPb/n;

    iput-object p4, p0, LWb/j;->i:LJb/f;

    const/4 p2, 0x4

    invoke-static {p1, p0, p3, p2}, LG5/U2;->b(Lo3/i;LJb/h;LPb/n;I)Lo3/i;

    move-result-object p1

    iput-object p1, p0, LWb/j;->j:Lo3/i;

    iget-object p2, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p2, LVb/a;

    iget-object v0, p2, LVb/a;->g:LTb/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LWb/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LWb/g;-><init>(LWb/j;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LWb/j;->k:Ldb/o;

    iget-object v0, p3, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LJb/g;->ANNOTATION_CLASS:LJb/g;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LJb/g;->INTERFACE:LJb/g;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, LJb/g;->ENUM_CLASS:LJb/g;

    goto :goto_0

    :cond_2
    sget-object v1, LJb/g;->CLASS:LJb/g;

    :goto_0
    iput-object v1, p0, LWb/j;->l:LJb/g;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, LJb/B;->Companion:LJb/A;

    invoke-virtual {p3}, LPb/n;->h()Z

    move-result v4

    invoke-virtual {p3}, LPb/n;->h()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, LJb/A;->a(ZZZ)LJb/B;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v1, LJb/B;->FINAL:LJb/B;

    :goto_4
    iput-object v1, p0, LWb/j;->m:LJb/B;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v1, LJb/h0;->c:LJb/h0;

    goto :goto_5

    :cond_7
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v1, LJb/e0;->c:LJb/e0;

    goto :goto_5

    :cond_8
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, LNb/c;->c:LNb/c;

    goto :goto_5

    :cond_9
    sget-object v1, LNb/b;->c:LNb/b;

    goto :goto_5

    :cond_a
    sget-object v1, LNb/a;->c:LNb/a;

    :goto_5
    iput-object v1, p0, LWb/j;->n:LJb/k0;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, LPb/n;

    invoke-direct {v4, v1}, LPb/n;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_c

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    goto :goto_7

    :cond_c
    move v0, v2

    :goto_7
    iput-boolean v0, p0, LWb/j;->o:Z

    new-instance v0, LWb/h;

    invoke-direct {v0, p0}, LWb/h;-><init>(LWb/j;)V

    iput-object v0, p0, LWb/j;->p:LWb/h;

    new-instance v6, LWb/p;

    if-eqz p4, :cond_d

    move v4, v3

    goto :goto_8

    :cond_d
    move v4, v2

    :goto_8
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, LWb/p;-><init>(Lo3/i;LJb/f;LPb/n;ZLWb/p;)V

    iput-object v6, p0, LWb/j;->q:LWb/p;

    sget-object p4, LJb/Q;->d:LJb/T;

    iget-object v0, p2, LVb/a;->a:Lxc/l;

    iget-object p2, p2, LVb/a;->u:Lzc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LMb/a;

    const/16 v1, 0xa

    invoke-direct {p2, v1, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "storageManager"

    invoke-static {v0, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, LJb/Q;

    invoke-direct {p4, p0, v0, p2}, LJb/Q;-><init>(LMb/c;Lxc/o;Lsb/k;)V

    iput-object p4, p0, LWb/j;->r:LJb/Q;

    new-instance p2, Lrc/i;

    invoke-direct {p2, v6}, Lrc/i;-><init>(Lrc/o;)V

    iput-object p2, p0, LWb/j;->s:Lrc/i;

    new-instance p2, LWb/E;

    invoke-direct {p2, p1, p3, p0}, LWb/E;-><init>(Lo3/i;LPb/n;LWb/j;)V

    iput-object p2, p0, LWb/j;->t:LWb/E;

    invoke-static {p1, p3}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object p1

    iput-object p1, p0, LWb/j;->u:LVb/c;

    new-instance p1, LWb/g;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LWb/g;-><init>(LWb/j;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lxc/i;

    invoke-direct {p2, v0, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p2, p0, LWb/j;->v:Lxc/i;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final D0()LWb/p;
    .locals 0

    invoke-super {p0}, LMb/c;->S()Lrc/o;

    move-result-object p0

    check-cast p0, LWb/p;

    return-object p0
.end method

.method public final E()LMb/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final Q()Lrc/o;
    .locals 0

    iget-object p0, p0, LWb/j;->s:Lrc/i;

    return-object p0
.end method

.method public final R()LJb/X;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final S()Lrc/o;
    .locals 0

    invoke-super {p0}, LMb/c;->S()Lrc/o;

    move-result-object p0

    check-cast p0, LWb/p;

    return-object p0
.end method

.method public final U()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()LJb/g;
    .locals 0

    iget-object p0, p0, LWb/j;->l:LJb/g;

    return-object p0
.end method

.method public final f0(Lzc/f;)Lrc/o;
    .locals 1

    iget-object p0, p0, LWb/j;->r:LJb/Q;

    iget-object p1, p0, LJb/Q;->a:LMb/c;

    invoke-static {p1}, Loc/d;->j(LJb/l;)LJb/C;

    iget-object p0, p0, LJb/Q;->c:Lxc/i;

    sget-object p1, LJb/Q;->e:[LAb/u;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc/o;

    check-cast p0, LWb/p;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getVisibility()LJb/p;
    .locals 2

    sget-object v0, LJb/q;->a:LJb/p;

    iget-object v1, p0, LWb/j;->n:LJb/k0;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LWb/j;->h:LPb/n;

    iget-object p0, p0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, LPb/n;

    invoke-direct {v0, p0}, LPb/n;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, LSb/o;->a:LJb/p;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, LG5/r2;->i(LJb/k0;)LJb/p;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final h()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LWb/j;->q:LWb/p;

    iget-object p0, p0, LWb/p;->q:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final i()Ljava/util/Collection;
    .locals 10

    iget-object v0, p0, LWb/j;->m:LJb/B;

    sget-object v1, LJb/B;->SEALED:LJb/B;

    if-ne v0, v1, :cond_7

    sget-object v0, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v3, v1}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v0

    iget-object v1, p0, LWb/j;->h:LPb/n;

    iget-object v1, v1, LPb/n;->a:Ljava/lang/Class;

    const-string v4, "clazz"

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LG5/p;->a:Lo3/i;

    if-nez v4, :cond_0

    const-class v4, Ljava/lang/Class;

    :try_start_0
    new-instance v5, Lo3/i;

    const-string v6, "isSealed"

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getPermittedSubclasses"

    invoke-virtual {v4, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "isRecord"

    invoke-virtual {v4, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v9, "getRecordComponents"

    invoke-virtual {v4, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lo3/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    new-instance v4, Lo3/i;

    invoke-direct {v4, v3, v3, v3, v3}, Lo3/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sput-object v4, LG5/p;->a:Lo3/i;

    :cond_0
    iget-object v4, v4, Lo3/i;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Class;

    :goto_1
    if-eqz v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v1

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    new-instance v7, LPb/p;

    invoke-direct {v7, v6}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v1

    goto :goto_3

    :cond_3
    sget-object v1, LJc/f;->a:LJc/f;

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LPb/p;

    iget-object v5, p0, LWb/j;->j:Lo3/i;

    iget-object v5, v5, Lo3/i;->d:Ljava/lang/Object;

    check-cast v5, Lo3/t;

    invoke-virtual {v5, v4, v0}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v4

    invoke-virtual {v4}, Lyc/w;->F0()Lyc/L;

    move-result-object v4

    invoke-interface {v4}, Lyc/L;->c()LJb/i;

    move-result-object v4

    instance-of v5, v4, LJb/f;

    if-eqz v5, :cond_5

    check-cast v4, LJb/f;

    goto :goto_5

    :cond_5
    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p0, LWb/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p0}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_6

    :cond_7
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_6
    return-object p0
.end method

.method public final j0()Lrc/o;
    .locals 0

    iget-object p0, p0, LWb/j;->t:LWb/E;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LWb/j;->v:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final r()LJb/B;
    .locals 0

    iget-object p0, p0, LWb/j;->m:LJb/B;

    return-object p0
.end method

.method public final s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, LWb/j;->u:LVb/c;

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 0

    iget-object p0, p0, LWb/j;->p:LWb/h;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, LWb/j;->o:Z

    return p0
.end method
