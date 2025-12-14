.class public final LDb/L;
.super LDb/s;
.source "SourceFile"

# interfaces
.implements Ltb/h;
.implements LAb/f;
.implements LDb/e;


# static fields
.field public static final synthetic i:[LAb/u;


# instance fields
.field public final c:LDb/I;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Object;

.field public final f:LDb/B0;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LDb/L;

    const-string v2, "descriptor"

    const-string v3, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LDb/L;->i:[LAb/u;

    return-void
.end method

.method public constructor <init>(LDb/I;LJb/v;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, LMb/n;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "asString(...)"

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object v0

    invoke-virtual {v0}, LG5/G;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LDb/L;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LJb/v;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LJb/v;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LDb/s;-><init>()V

    iput-object p1, p0, LDb/L;->c:LDb/I;

    iput-object p3, p0, LDb/L;->d:Ljava/lang/String;

    iput-object p5, p0, LDb/L;->e:Ljava/lang/Object;

    new-instance p1, LDb/J;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0, p2}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4, p1}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    iput-object p1, p0, LDb/L;->f:LDb/B0;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/K;

    invoke-direct {p2, p0, p3}, LDb/K;-><init>(LDb/L;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p2

    iput-object p2, p0, LDb/L;->g:Ljava/lang/Object;

    new-instance p2, LDb/K;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LDb/K;-><init>(LDb/L;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/L;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()LEb/g;
    .locals 0

    iget-object p0, p0, LDb/L;->g:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LEb/g;

    return-object p0
.end method

.method public final e()LDb/I;
    .locals 0

    iget-object p0, p0, LDb/L;->c:LDb/I;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, LDb/I0;->b(Ljava/lang/Object;)LDb/L;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LDb/L;->c:LDb/I;

    iget-object v2, p1, LDb/L;->c:LDb/I;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LDb/L;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LDb/L;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LDb/L;->d:Ljava/lang/String;

    iget-object v2, p1, LDb/L;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, LDb/L;->e:Ljava/lang/Object;

    iget-object p1, p1, LDb/L;->e:Ljava/lang/Object;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final f()LEb/g;
    .locals 0

    iget-object p0, p0, LDb/L;->h:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LEb/g;

    return-object p0
.end method

.method public final bridge synthetic g()LJb/d;
    .locals 0

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    return-object p0
.end method

.method public final getArity()I
    .locals 0

    invoke-virtual {p0}, LDb/L;->d()LEb/g;

    move-result-object p0

    invoke-static {p0}, LG5/q2;->c(LEb/g;)I

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    check-cast p0, LMb/n;

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LDb/L;->c:LDb/I;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LDb/L;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, LDb/L;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    iget-object p0, p0, LDb/L;->e:Ljava/lang/Object;

    sget-object v0, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Ljava/lang/reflect/Constructor;LJb/v;Z)LEb/x;
    .locals 10

    iget-object v0, p0, LDb/L;->e:Ljava/lang/Object;

    const-string v1, "getGenericParameterTypes(...)"

    const-string v2, "getDeclaringClass(...)"

    const-string v3, "constructor"

    const/4 v7, 0x0

    if-nez p3, :cond_9

    instance-of p3, p2, LMb/j;

    if-eqz p3, :cond_0

    check-cast p2, LMb/j;

    goto :goto_0

    :cond_0
    move-object p2, v7

    :goto_0
    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object p3, p2

    check-cast p3, LMb/v;

    invoke-virtual {p3}, LMb/v;->getVisibility()LJb/p;

    move-result-object v4

    invoke-static {v4}, LJb/q;->e(LJb/p;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2}, LMb/j;->b0()LJb/f;

    move-result-object v4

    const-string v5, "getConstructedClass(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkc/i;->f(LJb/l;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, LMb/j;->b0()LJb/f;

    move-result-object p2

    invoke-static {p2}, Lkc/e;->q(LJb/l;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p3}, LMb/v;->H()Ljava/util/List;

    move-result-object p2

    const-string p3, "getValueParameters(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    instance-of p3, p2, Ljava/util/Collection;

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LMb/T;

    check-cast p3, LMb/U;

    invoke-virtual {p3}, LMb/U;->getType()Lyc/w;

    move-result-object p3

    const-string v4, "getType(...)"

    invoke-static {p3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LG5/s;->d(Lyc/w;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, LDb/L;->j()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, LEb/h;

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {v0, p0}, LG5/r2;->b(Ljava/lang/Object;LJb/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, LEb/h;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_7
    new-instance p2, LEb/i;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p3, v1, :cond_8

    new-array p0, v0, [Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_8
    array-length p3, p0

    sub-int/2addr p3, v1

    invoke-static {v0, p3, p0}, Lfb/l;->m(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    move-object v8, p0

    check-cast v8, [Ljava/lang/reflect/Type;

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, LEb/i;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    goto :goto_4

    :cond_9
    :goto_2
    invoke-virtual {p0}, LDb/L;->j()Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, LEb/h;

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {v0, p0}, LG5/r2;->b(Ljava/lang/Object;LJb/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, LEb/h;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_a
    new-instance p2, LEb/i;

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p3

    if-nez p3, :cond_b

    move-object v3, v0

    goto :goto_3

    :cond_b
    move-object v3, v7

    :goto_3
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, LEb/i;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    :goto_4
    return-object p2
.end method

.method public final l(Ljava/lang/reflect/Method;Z)LEb/w;
    .locals 5

    invoke-virtual {p0}, LDb/L;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LEb/t;

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object v1

    invoke-interface {v1}, LJb/b;->K()LMb/w;

    move-result-object v1

    iget-object v2, p0, LDb/L;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LMb/w;->getType()Lyc/w;

    move-result-object v1

    invoke-static {v1}, Lkc/i;->c(Lyc/w;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getParameterTypes(...)"

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lfb/l;->s([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {v2, p0}, LG5/r2;->b(Ljava/lang/Object;LJb/d;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p1, p2, v2}, LEb/t;-><init>(Ljava/lang/reflect/Method;ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, LEb/v;

    const/4 p0, 0x2

    invoke-direct {v0, p1, p0}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_1
    return-object v0
.end method

.method public final m()LJb/v;
    .locals 2

    sget-object v0, LDb/L;->i:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/L;->f:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/v;

    return-object p0
.end method

.method public final o()Z
    .locals 0

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-interface {p0}, LJb/v;->o()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LDb/F0;->a:Ljc/j;

    invoke-virtual {p0}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {p0}, LDb/F0;->b(LJb/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
