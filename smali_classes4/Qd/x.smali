.class public final LQd/x;
.super LQd/t;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    iput-object p1, p0, LQd/t;->d:Ljava/lang/Object;

    iput-boolean p2, p0, LQd/x;->e:Z

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, LQd/u;->h()LQd/u;

    move-result-object p0

    check-cast p0, LQd/x;

    return-object p0
.end method

.method public final h()LQd/u;
    .locals 0

    invoke-super {p0}, LQd/u;->h()LQd/u;

    move-result-object p0

    check-cast p0, LQd/x;

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const-string p0, "#declaration"

    return-object p0
.end method

.method public final s(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 12

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    const-string v0, "?"

    const-string v1, "!"

    iget-boolean v2, p0, LQd/x;->e:Z

    if-eqz v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, LQd/t;->z()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, LQd/t;->e()LQd/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :cond_1
    :goto_1
    iget v3, p0, LQd/c;->a:I

    if-ge p2, v3, :cond_2

    iget-object v3, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-static {v3}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, LQd/c;->a:I

    if-ge p2, v3, :cond_4

    new-instance v3, LQd/a;

    iget-object v4, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v4, v4, p2

    iget-object v5, p0, LQd/c;->c:[Ljava/lang/Object;

    aget-object v5, v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5, p0}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    add-int/lit8 p2, p2, 0x1

    iget-object v4, v3, LQd/a;->a:Ljava/lang/String;

    iget-object v3, v3, LQd/a;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    move-object v6, v3

    const-string v3, "#declaration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v11}, LQd/r;->b(Ljava/lang/Appendable;Ljava/lang/String;LQd/h;ZZZZ)V

    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    const-string p1, ">"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final t(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LQd/u;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
