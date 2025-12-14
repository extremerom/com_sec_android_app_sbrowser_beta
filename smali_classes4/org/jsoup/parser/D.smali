.class public final Lorg/jsoup/parser/D;
.super Ljava/util/ArrayList;
.source "SourceFile"


# virtual methods
.method public final g()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
