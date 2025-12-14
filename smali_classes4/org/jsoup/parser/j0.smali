.class public final enum Lorg/jsoup/parser/j0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEscapedLessthanSign"

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->e()V

    iget-object p0, p1, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->r(C)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->e()V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscaped:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
