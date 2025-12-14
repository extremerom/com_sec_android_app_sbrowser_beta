.class public final Lwc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lwc/o;


# direct methods
.method public synthetic constructor <init>(Lwc/o;I)V
    .locals 0

    iput p2, p0, Lwc/m;->a:I

    iput-object p1, p0, Lwc/m;->b:Lwc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lwc/m;->a:I

    check-cast p1, Lhc/f;

    packed-switch v0, :pswitch_data_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/m;->b:Lwc/o;

    iget-object v0, p0, Lwc/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p0, p0, Lwc/o;->i:Lwc/p;

    iget-object p1, p0, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->p:Lic/g;

    sget-object v2, Lcc/V;->q:Lcc/a;

    invoke-virtual {v2, v1, p1}, Lic/c;->b(Ljava/io/ByteArrayInputStream;Lic/g;)Lic/b;

    move-result-object p1

    check-cast p1, Lcc/V;

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p0, p0, Lwc/p;->b:Luc/m;

    iget-object p0, p0, Luc/m;->i:Ljava/lang/Object;

    check-cast p0, Luc/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcc/V;->k:Ljava/util/List;

    const-string v1, "getAnnotationList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v12, p0, Luc/v;->a:Luc/m;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/h;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v12, Luc/m;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    iget-object v4, p0, Luc/v;->b:Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/auth/j;->i(Lcc/h;Lec/g;)LKb/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, LKb/g;->a:LKb/f;

    :goto_1
    move-object v4, p0

    goto :goto_2

    :cond_3
    new-instance p0, LKb/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, LKb/i;-><init>(ILjava/util/List;)V

    goto :goto_1

    :goto_2
    sget-object p0, Lec/e;->d:Lec/c;

    iget v0, p1, Lcc/V;->d:I

    invoke-virtual {p0, v0}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcc/h0;

    invoke-static {p0}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v6

    new-instance v0, Lwc/t;

    iget-object p0, v12, Luc/m;->a:Ljava/lang/Object;

    check-cast p0, Luc/k;

    iget-object v2, p0, Luc/k;->a:Lxc/o;

    iget p0, p1, Lcc/V;->e:I

    iget-object v1, v12, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    invoke-static {v1, p0}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v5

    iget-object p0, v12, Luc/m;->e:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Lec/i;

    iget-object p0, v12, Luc/m;->g:Ljava/lang/Object;

    move-object v11, p0

    check-cast v11, Lac/h;

    iget-object p0, v12, Luc/m;->c:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, LJb/l;

    iget-object p0, v12, Luc/m;->b:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lec/g;

    iget-object p0, v12, Luc/m;->d:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, LX4/i;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v11}, Lwc/t;-><init>(Lxc/o;LJb/l;LKb/h;Lhc/f;LJb/p;Lcc/V;Lec/g;LX4/i;Lec/i;Lac/h;)V

    iget-object p0, p1, Lcc/V;->f:Ljava/util/List;

    const-string v1, "getTypeParameterList(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0, p0}, Luc/m;->b(Luc/m;LMb/o;Ljava/util/List;)Luc/m;

    move-result-object p0

    iget-object p0, p0, Luc/m;->h:Ljava/lang/Object;

    check-cast p0, Luc/E;

    invoke-virtual {p0}, Luc/E;->b()Ljava/util/List;

    move-result-object v1

    const-string v2, "typeTable"

    iget-object v3, v12, Luc/m;->d:Ljava/lang/Object;

    check-cast v3, LX4/i;

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcc/V;->c:I

    and-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v2, p1, Lcc/V;->g:Lcc/T;

    const-string v4, "getUnderlyingType(...)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget v2, p1, Lcc/V;->h:I

    invoke-virtual {v3, v2}, LX4/i;->f(I)Lcc/T;

    move-result-object v2

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object v2

    iget v5, p1, Lcc/V;->c:I

    and-int/lit8 v6, v5, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    iget-object p1, p1, Lcc/V;->i:Lcc/T;

    const-string v3, "getExpandedType(...)"

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6

    iget p1, p1, Lcc/V;->j:I

    invoke-virtual {v3, p1}, LX4/i;->f(I)Lcc/T;

    move-result-object p1

    :goto_4
    invoke-virtual {p0, p1, v4}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lwc/t;->X0(Ljava/util/List;Lyc/A;Lyc/A;)V

    :goto_5
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No expandedType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/m;->b:Lwc/o;

    iget-object v0, p0, Lwc/o;->b:Ljava/util/LinkedHashMap;

    sget-object v1, Lcc/I;->w:Lcc/a;

    const-string v2, "PARSER"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p0, p0, Lwc/o;->i:Lwc/p;

    if-eqz v0, :cond_8

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, LDb/v;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2, p0}, LDb/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, LJc/n;->r(Lsb/a;)LJc/l;

    move-result-object v0

    invoke-static {v0}, LJc/n;->v(LJc/l;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_6

    :cond_8
    sget-object v0, Lfb/v;->a:Lfb/v;

    :goto_6
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/I;

    iget-object v3, p0, Lwc/p;->b:Luc/m;

    iget-object v3, v3, Luc/m;->i:Ljava/lang/Object;

    check-cast v3, Luc/v;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Luc/v;->f(Lcc/I;)Lwc/r;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-virtual {p0, p1, v2}, Lwc/p;->k(Lhc/f;Ljava/util/ArrayList;)V

    invoke-static {v2}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :pswitch_1
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc/m;->b:Lwc/o;

    iget-object v0, p0, Lwc/o;->a:Ljava/util/LinkedHashMap;

    sget-object v1, Lcc/A;->w:Lcc/a;

    const-string v2, "PARSER"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p0, p0, Lwc/o;->i:Lwc/p;

    if-eqz v0, :cond_a

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, LDb/v;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2, p0}, LDb/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, LJc/n;->r(Lsb/a;)LJc/l;

    move-result-object v0

    invoke-static {v0}, LJc/n;->v(LJc/l;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_8

    :cond_a
    sget-object v0, Lfb/v;->a:Lfb/v;

    :goto_8
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/A;

    iget-object v3, p0, Lwc/p;->b:Luc/m;

    iget-object v3, v3, Luc/m;->i:Ljava/lang/Object;

    check-cast v3, Luc/v;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Luc/v;->e(Lcc/A;)Lwc/s;

    move-result-object v1

    invoke-virtual {p0, v1}, Lwc/p;->r(Lwc/s;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {p0, p1, v2}, Lwc/p;->j(Lhc/f;Ljava/util/ArrayList;)V

    invoke-static {v2}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
