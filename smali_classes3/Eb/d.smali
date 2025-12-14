.class public final LEb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/Map;

.field public final c:Ldb/o;

.field public final d:Ldb/o;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Ldb/o;Ldb/o;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEb/d;->a:Ljava/lang/Class;

    iput-object p2, p0, LEb/d;->b:Ljava/util/Map;

    iput-object p3, p0, LEb/d;->c:Ldb/o;

    iput-object p4, p0, LEb/d;->d:Ldb/o;

    iput-object p5, p0, LEb/d;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LEb/d;->a:Ljava/lang/Class;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x69e9ad94

    if-eq v1, v2, :cond_3

    const v2, 0x8cdac1b

    if-eq v1, v2, :cond_1

    const v2, 0x5620bf09

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "annotationType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_1
    const-string v1, "hashCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, LEb/d;->d:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_5

    :cond_3
    const-string v1, "toString"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, LEb/d;->c:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_5

    :cond_5
    :goto_0
    const-string v1, "equals"

    invoke-static {p1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LEb/d;->b:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    if-eqz p3, :cond_15

    array-length v1, p3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_15

    invoke-static {p3}, Lfb/l;->z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/annotation/Annotation;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Ljava/lang/annotation/Annotation;

    goto :goto_1

    :cond_6
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_7

    invoke-static {p2}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object p2

    invoke-static {p2}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_2

    :cond_7
    move-object p2, p3

    :goto_2
    invoke-static {p2, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p0, p0, LEb/d;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of p2, p0, Ljava/util/Collection;

    if-eqz p2, :cond_9

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    move p0, v4

    goto/16 :goto_4

    :cond_9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, v0, [Z

    if-eqz v1, :cond_b

    check-cast v0, [Z

    const-string v1, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [Z

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p2

    goto/16 :goto_3

    :cond_b
    instance-of v1, v0, [C

    if-eqz v1, :cond_c

    check-cast v0, [C

    const-string v1, "null cannot be cast to non-null type kotlin.CharArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [C

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p2

    goto/16 :goto_3

    :cond_c
    instance-of v1, v0, [B

    if-eqz v1, :cond_d

    check-cast v0, [B

    const-string v1, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    goto/16 :goto_3

    :cond_d
    instance-of v1, v0, [S

    if-eqz v1, :cond_e

    check-cast v0, [S

    const-string v1, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [S

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p2

    goto :goto_3

    :cond_e
    instance-of v1, v0, [I

    if-eqz v1, :cond_f

    check-cast v0, [I

    const-string v1, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [I

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    goto :goto_3

    :cond_f
    instance-of v1, v0, [F

    if-eqz v1, :cond_10

    check-cast v0, [F

    const-string v1, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [F

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p2

    goto :goto_3

    :cond_10
    instance-of v1, v0, [J

    if-eqz v1, :cond_11

    check-cast v0, [J

    const-string v1, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [J

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p2

    goto :goto_3

    :cond_11
    instance-of v1, v0, [D

    if-eqz v1, :cond_12

    check-cast v0, [D

    const-string v1, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [D

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p2

    goto :goto_3

    :cond_12
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_13

    check-cast v0, [Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [Ljava/lang/Object;

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_13
    invoke-static {v0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_3
    if-nez p2, :cond_a

    move p0, v3

    :goto_4
    if-eqz p0, :cond_14

    move v3, v4

    :cond_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_15
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_16
    :goto_5
    return-object v0

    :cond_17
    new-instance p0, LDb/z0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Method is not supported: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (args: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_18

    new-array p3, v3, [Ljava/lang/Object;

    :cond_18
    invoke-static {p3}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
