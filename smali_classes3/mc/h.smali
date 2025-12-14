.class public final Lmc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmc/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/h;->a:Lmc/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmc/h;->b(Ljava/lang/Object;LJb/C;)Lmc/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p0, Lmc/y;

    invoke-interface {p2}, LJb/C;->j()LGb/i;

    move-result-object p1

    invoke-virtual {p1, p3}, LGb/i;->r(LGb/l;)Lyc/A;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmc/y;-><init>(Ljava/util/List;Lyc/w;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lmc/b;

    new-instance p1, LMb/a;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p3}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lmc/b;-><init>(Ljava/util/List;Lsb/k;)V

    :goto_1
    return-object p0
.end method

.method public final b(Ljava/lang/Object;LJb/C;)Lmc/g;
    .locals 5

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    new-instance p0, Lmc/d;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Lmc/d;-><init>(B)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    new-instance p0, Lmc/w;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Lmc/w;-><init>(S)V

    goto/16 :goto_3

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance p0, Lmc/k;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lmc/k;-><init>(I)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    new-instance p0, Lmc/u;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lmc/u;-><init>(J)V

    goto/16 :goto_3

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    new-instance p0, Lmc/e;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance p0, Lmc/c;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lmc/c;-><init>(F)V

    goto/16 :goto_3

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    new-instance p0, Lmc/c;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lmc/c;-><init>(D)V

    goto/16 :goto_3

    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    new-instance p0, Lmc/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lmc/c;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance p0, Lmc/x;

    check-cast p1, Ljava/lang/String;

    const-string p2, "value"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    instance-of v0, p1, [B

    sget-object v1, Lfb/v;->a:Lfb/v;

    const/4 v2, 0x0

    const-string v3, "<this>"

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    check-cast p1, [B

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    aget-byte p1, p1, v2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_a
    sget-object p1, LGb/l;->BYTE:LGb/l;

    invoke-virtual {p0, v1, p2, p1}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto/16 :goto_3

    :cond_b
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    check-cast p1, [S

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_d

    aget-short v3, p1, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    aget-short p1, p1, v2

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_d
    sget-object p1, LGb/l;->SHORT:LGb/l;

    invoke-virtual {p0, v1, p2, p1}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto/16 :goto_3

    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    check-cast p1, [I

    invoke-static {p1}, Lfb/l;->D([I)Ljava/util/List;

    move-result-object p1

    sget-object v0, LGb/l;->INT:LGb/l;

    invoke-virtual {p0, p1, p2, v0}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto/16 :goto_3

    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    check-cast p1, [J

    invoke-static {p1}, Lfb/l;->E([J)Ljava/util/List;

    move-result-object p1

    sget-object v0, LGb/l;->LONG:LGb/l;

    invoke-virtual {p0, p1, p2, v0}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto/16 :goto_3

    :cond_10
    instance-of v0, p1, [C

    if-eqz v0, :cond_13

    check-cast p1, [C

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_12

    if-eq v0, v4, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_12

    aget-char v3, p1, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_11
    aget-char p1, p1, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_12
    sget-object p1, LGb/l;->CHAR:LGb/l;

    invoke-virtual {p0, v1, p2, p1}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto :goto_3

    :cond_13
    instance-of v0, p1, [F

    if-eqz v0, :cond_14

    check-cast p1, [F

    invoke-static {p1}, Lfb/l;->C([F)Ljava/util/List;

    move-result-object p1

    sget-object v0, LGb/l;->FLOAT:LGb/l;

    invoke-virtual {p0, p1, p2, v0}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto :goto_3

    :cond_14
    instance-of v0, p1, [D

    if-eqz v0, :cond_15

    check-cast p1, [D

    invoke-static {p1}, Lfb/l;->B([D)Ljava/util/List;

    move-result-object p1

    sget-object v0, LGb/l;->DOUBLE:LGb/l;

    invoke-virtual {p0, p1, p2, v0}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto :goto_3

    :cond_15
    instance-of v0, p1, [Z

    if-eqz v0, :cond_16

    check-cast p1, [Z

    invoke-static {p1}, Lfb/l;->G([Z)Ljava/util/List;

    move-result-object p1

    sget-object v0, LGb/l;->BOOLEAN:LGb/l;

    invoke-virtual {p0, p1, p2, v0}, Lmc/h;->a(Ljava/util/List;LJb/C;LGb/l;)Lmc/b;

    move-result-object p0

    goto :goto_3

    :cond_16
    const/4 p0, 0x0

    if-nez p1, :cond_17

    new-instance p1, Lmc/v;

    invoke-direct {p1, p0}, Lmc/g;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :cond_17
    :goto_3
    return-object p0
.end method
