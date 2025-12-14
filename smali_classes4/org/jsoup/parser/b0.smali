.class public final enum Lorg/jsoup/parser/b0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEndTagOpen"

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEndTagName:Lorg/jsoup/parser/i1;

    sget-object v0, Lorg/jsoup/parser/i1;->ScriptData:Lorg/jsoup/parser/i1;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/S;->d(Z)Lorg/jsoup/parser/N;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    const-string p0, "</"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
