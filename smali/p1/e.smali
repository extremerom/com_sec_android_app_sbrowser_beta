.class public final Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/k;


# static fields
.field public static final a:Lp1/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp1/e;->a:Lp1/e;

    return-void
.end method

.method public static d(LA0/g;LUc/e;Lsb/a;I)Lp1/d;
    .locals 7

    sget-object v0, Lfb/v;->a:Lfb/v;

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    sget-object p1, LNc/N;->c:LWc/e;

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    :cond_0
    move-object v6, p1

    const-string p1, "scope"

    invoke-static {v6, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lp1/e;->a:Lp1/e;

    new-instance v2, Lhd/v;

    const/4 p1, 0x1

    invoke-direct {v2, p1, p2}, Lhd/v;-><init>(ILsb/a;)V

    new-instance p1, Lm1/d;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lm1/d;-><init>(Ljava/util/List;Lib/c;)V

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p1, Lm1/G;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lm1/G;-><init>(Lsb/a;Lm1/k;Ljava/util/List;Lm1/b;LNc/B;)V

    new-instance p0, Lp1/d;

    invoke-direct {p0, p1}, Lp1/d;-><init>(Lm1/G;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    invoke-static {}, LG5/n;->b()Lp1/b;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Lm1/p;)V
    .locals 5

    check-cast p1, Lp1/b;

    iget-object p0, p1, Lp1/b;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "unmodifiableMap(preferencesMap)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo1/f;->k()Lo1/d;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v1, Lp1/f;->a:Ljava/lang/String;

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v3, Lo1/k;

    invoke-static {v3, v0}, Lo1/k;->m(Lo1/k;Z)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto/16 :goto_1

    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v3, Lo1/k;

    invoke-static {v3, v0}, Lo1/k;->n(Lo1/k;F)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto/16 :goto_1

    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v0, Lo1/k;

    invoke-static {v0, v3, v4}, Lo1/k;->l(Lo1/k;D)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto/16 :goto_1

    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v3, Lo1/k;

    invoke-static {v3, v0}, Lo1/k;->o(Lo1/k;I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto :goto_1

    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v0, Lo1/k;

    invoke-static {v0, v3, v4}, Lo1/k;->i(Lo1/k;J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto :goto_1

    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v3, Lo1/k;

    invoke-static {v3, v0}, Lo1/k;->j(Lo1/k;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    goto :goto_1

    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_6

    invoke-static {}, Lo1/k;->y()Lo1/i;

    move-result-object v2

    invoke-static {}, Lo1/h;->l()Lo1/g;

    move-result-object v3

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v4, Lo1/h;

    invoke-static {v4, v0}, Lo1/h;->i(Lo1/h;Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v0, Lo1/k;

    invoke-static {v0, v3}, Lo1/k;->k(Lo1/k;Lo1/g;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    check-cast v0, Lo1/k;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    check-cast v2, Lo1/f;

    invoke-static {v2}, Lo1/f;->i(Lo1/f;)Landroidx/datastore/preferences/protobuf/S;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/S;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreferencesSerializer does not support type: "

    invoke-static {p1, p2}, Ltb/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object p0

    check-cast p0, Lo1/f;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/A;->a()I

    move-result p1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k;->h:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    if-le p1, v0, :cond_8

    move p1, v0

    :cond_8
    new-instance v0, Landroidx/datastore/preferences/protobuf/k;

    invoke-direct {v0, p2, p1}, Landroidx/datastore/preferences/protobuf/k;-><init>(Lm1/p;I)V

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/A;->c(Landroidx/datastore/preferences/protobuf/k;)V

    iget p0, v0, Landroidx/datastore/preferences/protobuf/k;->f:I

    if-lez p0, :cond_9

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k;->P()V

    :cond_9
    return-void
.end method

.method public c(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {p1}, Lo1/f;->l(Ljava/io/FileInputStream;)Lo1/f;

    move-result-object p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/F; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    new-array v0, p1, [Lp1/g;

    new-instance v1, Lp1/b;

    invoke-direct {v1, p1}, Lp1/b;-><init>(Z)V

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp1/g;

    const-string v2, "pairs"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lp1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    array-length v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lo1/f;->j()Ljava/util/Map;

    move-result-object p0

    const-string p1, "preferencesProto.preferencesMap"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/k;

    const-string v2, "name"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->x()Lo1/j;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    sget-object v4, Lp1/i;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Lm1/a;

    const-string p1, "Value not set."

    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_2
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->w()Lo1/h;

    move-result-object p1

    invoke-virtual {p1}, Lo1/h;->k()Landroidx/datastore/preferences/protobuf/C;

    move-result-object p1

    const-string v0, "value.stringSet.stringsList"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->v()Ljava/lang/String;

    move-result-object p1

    const-string v0, "value.string"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->r()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->s()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v2, Lp1/f;

    invoke-direct {v2, v0}, Lp1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/k;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance p0, Lm1/a;

    const-string p1, "Value case is null."

    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Lp1/b;->e()Lp1/b;

    move-result-object p0

    return-object p0

    :cond_2
    aget-object p0, v0, p1

    throw v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Do mutate preferences once returned to DataStore."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lm1/a;

    const-string v0, "Unable to parse preferences proto."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
