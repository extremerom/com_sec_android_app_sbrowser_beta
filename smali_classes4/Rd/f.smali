.class public final LRd/f;
.super LRd/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, LRd/f;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LOd/b;->e(Ljava/lang/String;)V

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LRd/f;->b:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, LPd/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-static {p2}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LRd/f;->b:Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, LPd/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-static {p2}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LRd/f;->b:Ljava/lang/String;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LRd/f;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    iput p2, p0, LRd/f;->a:I

    iput-object p1, p0, LRd/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 11

    iget p1, p0, LRd/f;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object p1, p1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object p1, p1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p2, LQd/n;->g:LQd/c;

    if-eqz p1, :cond_0

    const-string p2, "id"

    invoke-virtual {p1, p2}, LQd/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, LQd/l;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LQd/l;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-static {v0, p2}, LG5/I;->h(LRd/p;LQd/u;)V

    invoke-static {p1}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p2}, LQd/n;->M()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p2}, LQd/n;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p2}, LQd/n;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, LQd/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LQd/l;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-static {v0, p2}, LG5/I;->h(LRd/p;LQd/u;)V

    invoke-static {p1}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p1, p2, LQd/n;->g:LQd/c;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "class"

    invoke-virtual {p1, v0}, LQd/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v0, :cond_8

    if-ge v0, v7, :cond_2

    goto :goto_3

    :cond_2
    if-ne v0, v7, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    goto :goto_3

    :cond_3
    move v1, p2

    move v8, v1

    move v9, v8

    :goto_1
    if-ge v9, v0, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    sub-int v1, v9, v8

    if-ne v1, v7, :cond_4

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v8

    move-object v4, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v10

    goto :goto_3

    :cond_4
    move v1, p2

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    move v8, v9

    move v1, v10

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sub-int/2addr v0, v8

    if-ne v0, v7, :cond_8

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v8

    move-object v4, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    :cond_8
    :goto_3
    return p2

    :pswitch_8
    invoke-virtual {p2}, LQd/n;->e()LQd/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    iget v0, p1, LQd/c;->a:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget v2, p1, LQd/c;->a:I

    if-ge v1, v2, :cond_a

    iget-object v2, p1, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, LQd/a;

    iget-object v3, p1, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LQd/a;

    iget-object p2, p2, LQd/a;->a:Ljava/lang/String;

    invoke-static {p2}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    :cond_c
    return v0

    :pswitch_9
    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, LQd/u;->l(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LRd/f;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":containsWholeText("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":containsWholeOwnText("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":contains("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":containsOwn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":containsData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRd/f;->b:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
