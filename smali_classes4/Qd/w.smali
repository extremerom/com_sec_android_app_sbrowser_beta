.class public LQd/w;
.super LQd/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQd/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public static C(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public B()LQd/w;
    .locals 0

    invoke-super {p0}, LQd/u;->h()LQd/u;

    move-result-object p0

    check-cast p0, LQd/w;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LQd/w;->B()LQd/w;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()LQd/u;
    .locals 0

    invoke-virtual {p0}, LQd/w;->B()LQd/w;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "#text"

    return-object p0
.end method

.method public s(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 11

    iget-boolean v1, p3, LQd/h;->e:Z

    iget-object v3, p0, LQd/u;->a:LQd/u;

    instance-of v4, v3, LQd/n;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, LQd/n;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-static {v3}, LQd/n;->H(LQd/u;)Z

    move-result v1

    if-nez v1, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-eqz v4, :cond_3

    iget-object v1, v4, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean v3, v1, Lorg/jsoup/parser/F;->c:Z

    if-nez v3, :cond_2

    iget-boolean v1, v1, Lorg/jsoup/parser/F;->d:Z

    if-eqz v1, :cond_3

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    move v1, v7

    :goto_2
    if-eqz v8, :cond_11

    if-eqz v1, :cond_4

    iget v3, p0, LQd/u;->b:I

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, LQd/u;->a:LQd/u;

    instance-of v3, v3, LQd/j;

    if-eqz v3, :cond_6

    :cond_5
    move v3, v6

    goto :goto_3

    :cond_6
    move v3, v7

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, LQd/u;->o()LQd/u;

    move-result-object v1

    if-nez v1, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p0}, LQd/u;->o()LQd/u;

    move-result-object v1

    iget-object v9, p0, LQd/u;->a:LQd/u;

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    iget v10, p0, LQd/u;->b:I

    if-lez v10, :cond_9

    invoke-virtual {v9}, LQd/u;->k()Ljava/util/List;

    move-result-object v5

    iget v9, p0, LQd/u;->b:I

    sub-int/2addr v9, v6

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQd/u;

    :cond_9
    :goto_4
    invoke-virtual {p0}, LQd/t;->z()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LPd/b;->d(Ljava/lang/String;)Z

    move-result v6

    instance-of v9, v1, LQd/n;

    const-string v10, "br"

    if-eqz v9, :cond_a

    move-object v9, v1

    check-cast v9, LQd/n;

    invoke-virtual {v9, p3}, LQd/n;->K(LQd/h;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_a
    instance-of v9, v1, LQd/w;

    if-eqz v9, :cond_b

    check-cast v1, LQd/w;

    invoke-virtual {v1}, LQd/t;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LPd/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    instance-of v1, v5, LQd/n;

    if-eqz v1, :cond_d

    move-object v1, v5

    check-cast v1, LQd/n;

    iget-object v1, v1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean v1, v1, Lorg/jsoup/parser/F;->c:Z

    if-nez v1, :cond_c

    invoke-virtual {v5}, LQd/u;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v6, :cond_d

    return-void

    :cond_d
    iget v1, p0, LQd/u;->b:I

    if-nez v1, :cond_e

    if-eqz v4, :cond_e

    iget-object v4, v4, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean v4, v4, Lorg/jsoup/parser/F;->d:Z

    if-eqz v4, :cond_e

    if-eqz v6, :cond_f

    :cond_e
    if-lez v1, :cond_10

    if-eqz v5, :cond_10

    invoke-virtual {v5}, LQd/u;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-static {p1, p2, p3}, LQd/u;->n(Ljava/lang/StringBuilder;ILQd/h;)V

    :cond_10
    move v5, v3

    move v6, v7

    goto :goto_5

    :cond_11
    move v5, v7

    move v6, v5

    :goto_5
    invoke-virtual {p0}, LQd/t;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p3

    move v4, v8

    invoke-static/range {v0 .. v6}, LQd/r;->b(Ljava/lang/Appendable;Ljava/lang/String;LQd/h;ZZZZ)V

    return-void
.end method

.method public t(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LQd/u;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
