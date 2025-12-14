.class public final LDb/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/y;

.field public final c:LDb/C;


# direct methods
.method public constructor <init>(LDb/C;LDb/y;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LDb/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/x;->c:LDb/C;

    iput-object p2, p0, LDb/x;->b:LDb/y;

    return-void
.end method

.method public synthetic constructor <init>(LDb/y;LDb/C;I)V
    .locals 0

    iput p3, p0, LDb/x;->a:I

    iput-object p1, p0, LDb/x;->b:LDb/y;

    iput-object p2, p0, LDb/x;->c:LDb/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, LDb/x;->c:LDb/C;

    iget-object v2, p0, LDb/x;->b:LDb/y;

    iget p0, p0, LDb/x;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v2}, LDb/y;->a()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getSupertypes(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    new-instance v4, LDb/v0;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v5, LDb/v;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v2, v1}, LDb/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v3, v5}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LDb/y;->a()LJb/f;

    move-result-object p0

    sget-object v1, LGb/i;->e:Lhc/f;

    sget-object v1, LGb/p;->a:Lhc/d;

    invoke-static {p0, v1}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, LGb/p;->b:Lhc/d;

    invoke-static {p0, v1}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDb/v0;

    iget-object v1, v1, LDb/v0;->a:Lyc/w;

    invoke-static {v1}, Lkc/e;->c(Lyc/w;)LJb/f;

    move-result-object v1

    invoke-interface {v1}, LJb/f;->d()LJb/g;

    move-result-object v1

    const-string v3, "getKind(...)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LJb/g;->INTERFACE:LJb/g;

    if-eq v1, v3, :cond_3

    sget-object v3, LJb/g;->ANNOTATION_CLASS:LJb/g;

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_4
    :goto_2
    new-instance p0, LDb/v0;

    invoke-virtual {v2}, LDb/y;->a()LJb/f;

    move-result-object v1

    invoke-static {v1}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v1

    invoke-virtual {v1}, LGb/i;->e()Lyc/A;

    move-result-object v1

    sget-object v2, LDb/w;->a:LDb/w;

    invoke-direct {p0, v1, v2}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-static {v0}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {v2}, LDb/y;->a()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->q()Ljava/util/List;

    move-result-object p0

    const-string v0, "getDeclaredTypeParameters(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/W;

    new-instance v3, LDb/x0;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v2}, LDb/x0;-><init>(LDb/y0;LJb/W;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v0

    :pswitch_1
    invoke-virtual {v2}, LDb/y;->a()LJb/f;

    move-result-object p0

    invoke-interface {p0}, LJb/f;->d()LJb/g;

    move-result-object v2

    sget-object v3, LJb/g;->OBJECT:LJb/g;

    if-eq v2, v3, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {p0}, LJb/f;->X()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, LGb/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0}, LG5/H2;->d(LJb/f;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v1, v1, LDb/C;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_5

    :cond_8
    iget-object p0, v1, LDb/C;->b:Ljava/lang/Class;

    const-string v1, "INSTANCE"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v0, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object v0

    :pswitch_2
    iget-object p0, v1, LDb/C;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, LDb/C;->x()Lhc/b;

    move-result-object p0

    iget-boolean v0, p0, Lhc/b;->c:Z

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, LDb/C;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v2, 0x24

    if-eqz v1, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LKc/k;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LKc/k;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_b
    invoke-static {v0}, LKc/k;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_7
    move-object v0, p0

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lhc/b;->f()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
