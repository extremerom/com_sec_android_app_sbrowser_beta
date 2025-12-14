.class public Lorg/jsoup/parser/H;
.super LF3/f;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LF3/f;-><init>(IZ)V

    sget-object v0, Lorg/jsoup/parser/O;->Character:Lorg/jsoup/parser/O;

    iput-object v0, p0, LF3/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final P0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    return-void
.end method

.method public final S0()Lorg/jsoup/parser/H;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/H;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/H;->S0()Lorg/jsoup/parser/H;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    return-object p0
.end method
