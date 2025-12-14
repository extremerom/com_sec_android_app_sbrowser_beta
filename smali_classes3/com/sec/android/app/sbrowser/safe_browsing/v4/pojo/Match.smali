.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u0004\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u0012\u0010\u0004\"\u0004\u0008\u0013\u0010\u0010R$\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\r\u001a\u0004\u0008\u0015\u0010\u0004\"\u0004\u0008\u0016\u0010\u0010R$\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\r\u001a\u0004\u0008&\u0010\u0004\"\u0004\u0008\'\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "threatType",
        "Ljava/lang/String;",
        "getThreatType",
        "setThreatType",
        "(Ljava/lang/String;)V",
        "platformType",
        "getPlatformType",
        "setPlatformType",
        "threatEntryType",
        "getThreatEntryType",
        "setThreatEntryType",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;",
        "threat",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;",
        "getThreat",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;",
        "setThreat",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;)V",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;",
        "threatEntryMetadata",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;",
        "getThreatEntryMetadata",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;",
        "setThreatEntryMetadata",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;)V",
        "cacheDuration",
        "getCacheDuration",
        "setCacheDuration",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cacheDuration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cacheDuration"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private platformType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platformType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threat"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threatEntryMetadata:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threatEntryMetadata"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threatEntryType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threatEntryType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threatType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threatType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->platformType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->platformType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryMetadata:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryMetadata:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->cacheDuration:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->cacheDuration:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCacheDuration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->cacheDuration:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlatformType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->platformType:Ljava/lang/String;

    return-object p0
.end method

.method public final getThreat()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    return-object p0
.end method

.method public final getThreatEntryType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryType:Ljava/lang/String;

    return-object p0
.end method

.method public final getThreatType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->platformType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryMetadata:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->cacheDuration:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->platformType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threat:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->threatEntryMetadata:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryMetadata;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Match;->cacheDuration:Ljava/lang/String;

    const-string v5, "Match(threatType="

    const-string v6, ", platformType="

    const-string v7, ", threatEntryType="

    invoke-static {v5, v0, v6, v1, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threatEntryMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
