.class public final LWb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUb/i;


# static fields
.field public static final synthetic h:[LAb/u;


# instance fields
.field public final a:Lo3/i;

.field public final b:LPb/d;

.field public final c:Lxc/h;

.field public final d:Lxc/i;

.field public final e:LOb/f;

.field public final f:Lxc/i;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltb/p;

    const-class v1, LWb/f;

    const-string v2, "fqName"

    const-string v3, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "type"

    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v3

    const-string v5, "allValueArguments"

    const-string v6, "getAllValueArguments()Ljava/util/Map;"

    invoke-static {v1, v5, v6, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LWb/f;->h:[LAb/u;

    return-void
.end method

.method public constructor <init>(LPb/d;Lo3/i;Z)V
    .locals 3

    const-string v0, "c"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaAnnotation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LWb/f;->a:Lo3/i;

    iput-object p1, p0, LWb/f;->b:LPb/d;

    iget-object p2, p2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p2, LVb/a;

    iget-object v0, p2, LVb/a;->a:Lxc/l;

    new-instance v1, LWb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LWb/e;-><init>(LWb/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lxc/h;

    invoke-direct {v2, v0, v1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v2, p0, LWb/f;->c:Lxc/h;

    new-instance v1, LWb/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LWb/e;-><init>(LWb/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lxc/i;

    invoke-direct {v2, v0, v1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v2, p0, LWb/f;->d:Lxc/i;

    iget-object p2, p2, LVb/a;->j:LOb/d;

    invoke-virtual {p2, p1}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object p1

    iput-object p1, p0, LWb/f;->e:LOb/f;

    new-instance p1, LWb/e;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LWb/e;-><init>(LWb/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lxc/i;

    invoke-direct {p2, v0, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p2, p0, LWb/f;->f:Lxc/i;

    iput-boolean p3, p0, LWb/f;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, LWb/f;->f:Lxc/i;

    sget-object v0, LWb/f;->h:[LAb/u;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final b()Lhc/c;
    .locals 2

    iget-object p0, p0, LWb/f;->c:Lxc/h;

    sget-object v0, LWb/f;->h:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lxc/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/c;

    return-object p0
.end method

.method public final c(LYb/a;)Lmc/g;
    .locals 7

    instance-of v0, p1, LPb/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lmc/h;->a:Lmc/h;

    check-cast p1, LPb/u;

    iget-object p1, p1, LPb/u;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lmc/h;->b(Ljava/lang/Object;LJb/C;)Lmc/g;

    move-result-object v1

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, LPb/s;

    if-eqz v0, :cond_2

    check-cast p1, LPb/s;

    iget-object p0, p1, LPb/s;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    iget-object p1, p1, LPb/s;->b:Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    new-instance v1, Lmc/i;

    invoke-direct {v1, p0, p1}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    goto/16 :goto_5

    :cond_2
    instance-of v0, p1, LPb/g;

    const/4 v2, 0x0

    iget-object v3, p0, LWb/f;->a:Lo3/i;

    if-eqz v0, :cond_9

    check-cast p1, LPb/g;

    move-object v0, p1

    check-cast v0, LPb/e;

    iget-object v0, v0, LPb/e;->a:Lhc/f;

    if-nez v0, :cond_3

    sget-object v0, LSb/x;->b:Lhc/f;

    :cond_3
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, LPb/g;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v4, p0, LWb/f;->d:Lxc/i;

    sget-object v5, LWb/f;->h:[LAb/u;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v4, v5}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/A;

    invoke-static {v4}, Lyc/c;->k(Lyc/w;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {p0}, Loc/d;->d(LKb/b;)LJb/f;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0, v4}, LG5/v2;->e(Lhc/f;LJb/f;)LMb/T;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, LMb/U;

    invoke-virtual {v0}, LMb/U;->getType()Lyc/w;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->o:LMb/B;

    iget-object v0, v0, LMb/B;->e:LGb/i;

    sget-object v3, Lyc/e0;->INVARIANT:Lyc/e0;

    sget-object v4, LAc/k;->UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT:LAc/k;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v4, v2}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, LGb/i;->i(Lyc/e0;Lyc/d0;)Lyc/A;

    move-result-object v0

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LYb/a;

    invoke-virtual {p0, v3}, LWb/f;->c(LYb/a;)Lmc/g;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Lmc/v;

    invoke-direct {v3, v1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance v1, Lmc/y;

    invoke-direct {v1, v2, v0}, Lmc/y;-><init>(Ljava/util/List;Lyc/w;)V

    goto/16 :goto_5

    :cond_9
    instance-of p0, p1, LPb/f;

    if-eqz p0, :cond_a

    check-cast p1, LPb/f;

    new-instance p0, LPb/d;

    iget-object p1, p1, LPb/f;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1}, LPb/d;-><init>(Ljava/lang/annotation/Annotation;)V

    new-instance v1, Lmc/a;

    new-instance p1, LWb/f;

    invoke-direct {p1, p0, v3, v2}, LWb/f;-><init>(LPb/d;Lo3/i;Z)V

    invoke-direct {v1, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a
    instance-of p0, p1, LPb/o;

    if-eqz p0, :cond_13

    check-cast p1, LPb/o;

    iget-object p0, p1, LPb/o;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, LPb/y;

    invoke-direct {p1, p0}, LPb/y;-><init>(Ljava/lang/Class;)V

    goto :goto_3

    :cond_b
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p1, :cond_d

    new-instance p1, LPb/D;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {p1, p0}, LPb/D;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_3

    :cond_d
    new-instance p1, LPb/p;

    invoke-direct {p1, p0}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_3

    :cond_e
    :goto_2
    new-instance p1, LPb/h;

    invoke-direct {p1, p0}, LPb/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_3
    iget-object p0, v3, Lo3/i;->d:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    sget-object v0, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v1, v3}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object p0

    invoke-static {p0}, Lyc/c;->k(Lyc/w;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move-object p1, p0

    move v0, v2

    :goto_4
    invoke-static {p1}, LGb/i;->z(Lyc/w;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/Q;

    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object p1

    const-string v3, "getType(...)"

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    instance-of v3, p1, LJb/f;

    if-eqz v3, :cond_12

    invoke-static {p1}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object p1

    if-nez p1, :cond_11

    new-instance v1, Lmc/t;

    new-instance p1, Lmc/q;

    invoke-direct {p1, p0}, Lmc/q;-><init>(Lyc/w;)V

    invoke-direct {v1, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    new-instance v1, Lmc/t;

    invoke-direct {v1, p1, v0}, Lmc/t;-><init>(Lhc/b;I)V

    goto :goto_5

    :cond_12
    instance-of p0, p1, LJb/W;

    if-eqz p0, :cond_13

    new-instance v1, Lmc/t;

    sget-object p0, LGb/p;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->g()Lhc/c;

    move-result-object p0

    new-instance p1, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object v0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-direct {v1, p1, v2}, Lmc/t;-><init>(Lhc/b;I)V

    :cond_13
    :goto_5
    return-object v1
.end method

.method public final e()LJb/S;
    .locals 0

    iget-object p0, p0, LWb/f;->e:LOb/f;

    return-object p0
.end method

.method public final getType()Lyc/w;
    .locals 2

    iget-object p0, p0, LWb/f;->d:Lxc/i;

    sget-object v0, LWb/f;->h:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/A;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljc/j;->c:Ljc/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljc/j;->x(LKb/b;LKb/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
