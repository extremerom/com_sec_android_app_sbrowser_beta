.class public final enum Lorg/jsoup/parser/q;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterAfterFrameset"

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 2

    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LF3/f;->K0()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    move-result p0

    return p0
.end method
