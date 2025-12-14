.class public final enum Lorg/jsoup/parser/P0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterDoctypeName"

    const/16 v1, 0x35

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    iput-boolean v1, p0, Lorg/jsoup/parser/J;->g:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->k()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->s([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->r(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->k()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p1, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    iput-object v0, p0, Lorg/jsoup/parser/J;->d:Ljava/lang/String;

    sget-object p0, Lorg/jsoup/parser/i1;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->q(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p1, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    iput-object v0, p0, Lorg/jsoup/parser/J;->d:Ljava/lang/String;

    sget-object p0, Lorg/jsoup/parser/i1;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    iput-boolean v1, p0, Lorg/jsoup/parser/J;->g:Z

    sget-object p0, Lorg/jsoup/parser/i1;->BogusDoctype:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
