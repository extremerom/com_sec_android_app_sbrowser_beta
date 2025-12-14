.class public final enum Lorg/jsoup/parser/m;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Initial"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 5

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result p0

    if-eqz p0, :cond_7

    check-cast p1, Lorg/jsoup/parser/J;

    new-instance p0, LQd/k;

    iget-object v1, p2, Lorg/jsoup/parser/b;->h:Lorg/jsoup/parser/E;

    iget-object v2, p1, Lorg/jsoup/parser/J;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v1, Lorg/jsoup/parser/E;->a:Z

    if-nez v1, :cond_2

    invoke-static {v2}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v1, p1, Lorg/jsoup/parser/J;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lorg/jsoup/parser/J;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, LOd/b;->g(Ljava/lang/Object;)V

    invoke-static {v1}, LOd/b;->g(Ljava/lang/Object;)V

    invoke-static {v3}, LOd/b;->g(Ljava/lang/Object;)V

    const-string v4, "name"

    invoke-virtual {p0, v4, v2}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "publicId"

    invoke-virtual {p0, v2, v1}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "systemId"

    invoke-virtual {p0, v1, v3}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, LQd/k;->B(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pubSysKey"

    if-eqz v2, :cond_3

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v3, v1}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, LQd/k;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SYSTEM"

    invoke-virtual {p0, v3, v1}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v1, p1, Lorg/jsoup/parser/J;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3, v1}, LQd/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p2, Lorg/jsoup/parser/b;->d:LQd/j;

    invoke-virtual {v1, p0}, LQd/n;->z(LQd/u;)V

    iget-boolean p0, p1, Lorg/jsoup/parser/J;->g:Z

    if-eqz p0, :cond_6

    iget-object p0, p2, Lorg/jsoup/parser/b;->d:LQd/j;

    sget-object p1, LQd/i;->quirks:LQd/i;

    iput-object p1, p0, LQd/j;->l:LQd/i;

    :cond_6
    sget-object p0, Lorg/jsoup/parser/C;->BeforeHtml:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :goto_1
    return v0

    :cond_7
    sget-object p0, Lorg/jsoup/parser/C;->BeforeHtml:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0
.end method
