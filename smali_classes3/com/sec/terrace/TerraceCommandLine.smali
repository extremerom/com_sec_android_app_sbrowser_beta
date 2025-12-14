.class public Lcom/sec/terrace/TerraceCommandLine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static appendSwitch(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method public static appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/base/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hasSwitch(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static initFromFile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/CommandLine;->initFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static removeSwitch(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->removeSwitch(Ljava/lang/String;)V

    return-void
.end method

.method public static tokenizeQuotedArguments([C)[Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    if-ge v4, v1, :cond_8

    aget-char v7, p0, v4

    if-nez v6, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_1

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    :cond_0
    if-ne v7, v6, :cond_4

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_a

    if-eqz v6, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unterminated quoted string: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TerraceCommandLine"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
