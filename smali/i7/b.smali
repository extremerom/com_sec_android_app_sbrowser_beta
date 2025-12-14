.class public final Li7/b;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Ll7/u;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:Ll7/c;

.field public l:[B


# direct methods
.method public constructor <init>(Ll7/u;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Li7/z;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Li7/b;->e:Ll7/u;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li7/b;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Li7/b;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li7/b;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li7/b;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li7/b;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Li7/b;->k:Ll7/c;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "thisClass == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Li7/f;Ln7/b;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ln7/b;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_1
    move p2, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/i;

    invoke-virtual {v1, p0, p1, p2, v2}, Li7/i;->d(Li7/f;Ln7/b;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static q(Ln7/b;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Ln7/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_size:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "  %-21s %08x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln7/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Ln7/b;->m(I)I

    return-void
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 4

    iget-object v0, p0, Li7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Li7/b;->r()Ll7/c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Li7/f;->h:Li7/l;

    iget-object v1, v1, Li7/h;->b:Ll7/h;

    invoke-virtual {v2, v1}, Li7/l;->m(Ll7/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li7/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Li7/f;->h:Li7/l;

    iget-object v1, v1, Li7/h;->b:Ll7/h;

    invoke-virtual {v2, v1}, Li7/l;->m(Ll7/h;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Li7/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Li7/f;->i:Li7/v;

    iget-object v3, v1, Li7/j;->b:Ll7/q;

    invoke-virtual {v2, v3}, Li7/v;->m(Ll7/q;)V

    iget-object v1, v1, Li7/j;->c:Li7/e;

    if-eqz v1, :cond_2

    iget-object v2, p1, Li7/f;->a:Li7/y;

    invoke-virtual {v2, v1}, Li7/y;->k(Li7/z;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Li7/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Li7/f;->i:Li7/v;

    iget-object v2, v0, Li7/j;->b:Ll7/q;

    invoke-virtual {v1, v2}, Li7/v;->m(Ll7/q;)V

    iget-object v0, v0, Li7/j;->c:Li7/e;

    if-eqz v0, :cond_4

    iget-object v1, p1, Li7/f;->a:Li7/y;

    invoke-virtual {v1, v0}, Li7/y;->k(Li7/z;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_CLASS_DATA_ITEM:Li7/q;

    return-object p0
.end method

.method public final l(Li7/y;I)V
    .locals 2

    new-instance p2, Ln7/b;

    invoke-direct {p2}, Ln7/b;-><init>()V

    iget-object p1, p1, Li7/C;->b:Li7/f;

    invoke-virtual {p0, p1, p2}, Li7/b;->p(Li7/f;Ln7/b;)V

    iget p1, p2, Ln7/b;->c:I

    new-array v0, p1, [B

    iget-object p2, p2, Ln7/b;->b:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Li7/b;->l:[B

    invoke-virtual {p0, p1}, Li7/z;->m(I)V

    return-void
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Li7/b;->p(Li7/f;Ln7/b;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Li7/b;->l:[B

    invoke-virtual {p2, p0}, Ln7/b;->h([B)V

    :goto_0
    return-void
.end method

.method public final p(Li7/f;Ln7/b;)V
    .locals 9

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li7/b;->e:Ll7/u;

    iget-object v2, v2, Ll7/u;->a:Lm7/c;

    invoke-virtual {v2}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Li7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "static_fields"

    invoke-static {p2, v3, v2}, Li7/b;->q(Ln7/b;Ljava/lang/String;I)V

    iget-object v2, p0, Li7/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "instance_fields"

    invoke-static {p2, v5, v4}, Li7/b;->q(Ln7/b;Ljava/lang/String;I)V

    iget-object v4, p0, Li7/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "direct_methods"

    invoke-static {p2, v7, v6}, Li7/b;->q(Ln7/b;Ljava/lang/String;I)V

    iget-object p0, p0, Li7/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v8, "virtual_methods"

    invoke-static {p2, v8, v6}, Li7/b;->q(Ln7/b;Ljava/lang/String;I)V

    invoke-static {p1, p2, v3, v1}, Li7/b;->o(Li7/f;Ln7/b;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2, v5, v2}, Li7/b;->o(Li7/f;Ln7/b;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2, v7, v4}, Li7/b;->o(Li7/f;Ln7/b;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2, v8, p0}, Li7/b;->o(Li7/f;Ln7/b;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ln7/b;->e()V

    :cond_1
    return-void
.end method

.method public final r()Ll7/c;
    .locals 8

    iget-object v0, p0, Li7/b;->k:Ll7/c;

    if-nez v0, :cond_6

    iget-object v0, p0, Li7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    iget-object v2, p0, Li7/b;->g:Ljava/util/HashMap;

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li7/h;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll7/a;

    instance-of v4, v3, Ll7/n;

    if-eqz v4, :cond_0

    check-cast v3, Ll7/n;

    invoke-virtual {v3}, Ll7/n;->k()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_3
    new-instance v3, Ll7/b;

    invoke-direct {v3, v1}, Ln7/e;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li7/h;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll7/a;

    if-nez v7, :cond_4

    iget-object v6, v6, Li7/h;->b:Ll7/h;

    invoke-virtual {v6}, Ll7/h;->getType()Lm7/c;

    move-result-object v6

    iget v7, v6, Lm7/c;->b:I

    packed-switch v7, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no zero for type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v6, Ll7/k;->a:Ll7/k;

    :goto_3
    move-object v7, v6

    goto :goto_4

    :pswitch_1
    sget-object v6, Ll7/s;->b:Ll7/s;

    goto :goto_3

    :pswitch_2
    sget-object v6, Ll7/o;->b:Ll7/o;

    goto :goto_3

    :pswitch_3
    sget-object v6, Ll7/j;->c:Ll7/j;

    goto :goto_3

    :pswitch_4
    sget-object v6, Ll7/i;->b:Ll7/i;

    goto :goto_3

    :pswitch_5
    sget-object v6, Ll7/g;->b:Ll7/g;

    goto :goto_3

    :pswitch_6
    sget-object v6, Ll7/f;->b:Ll7/f;

    goto :goto_3

    :pswitch_7
    sget-object v6, Ll7/e;->b:Ll7/e;

    goto :goto_3

    :pswitch_8
    sget-object v6, Ll7/d;->b:Ll7/d;

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v3, v5, v7}, Ln7/e;->f(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v4, v3, LEc/g;->a:Z

    new-instance v0, Ll7/c;

    invoke-direct {v0, v3}, Ll7/c;-><init>(Ll7/b;)V

    :goto_5
    iput-object v0, p0, Li7/b;->k:Ll7/c;

    :cond_6
    iget-object p0, p0, Li7/b;->k:Ll7/c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Li7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li7/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li7/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li7/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
