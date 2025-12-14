.class public final enum Lorg/jsoup/parser/o0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CharacterReferenceInData"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 3

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/parser/S;->c(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-nez p2, :cond_0

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/S;->f(C)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p2

    invoke-direct {v1, p2, v0, v2}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    return-void
.end method
