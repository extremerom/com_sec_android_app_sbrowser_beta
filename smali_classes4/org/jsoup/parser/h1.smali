.class public final enum Lorg/jsoup/parser/h1;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EndTagOpen"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    const-string p0, "</"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->d(Z)Lorg/jsoup/parser/N;

    sget-object p0, Lorg/jsoup/parser/i1;->TagName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->r(C)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    invoke-virtual {p0}, Lorg/jsoup/parser/I;->P0()V

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/I;->S0(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->BogusComment:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
