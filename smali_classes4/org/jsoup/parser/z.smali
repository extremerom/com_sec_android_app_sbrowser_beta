.class public final enum Lorg/jsoup/parser/z;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Text"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 2

    iget-object v0, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/O;

    sget-object v1, Lorg/jsoup/parser/O;->Character:Lorg/jsoup/parser/O;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LF3/f;->K0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    iget-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    iget-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
