.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0007R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0007R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;",
        "",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        "toTerraceOmniboxSuggestion",
        "()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
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
        "domain",
        "Ljava/lang/String;",
        "getDomain",
        "iconPath",
        "getIconPath",
        "title",
        "getTitle",
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
.field private final domain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "domain"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_path"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->iconPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->iconPath:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->title:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->iconPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->title:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->iconPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->title:Ljava/lang/String;

    const-string v2, "DataLakeContent(domain="

    const-string v3, ", iconPath="

    const-string v4, ", title="

    invoke-static {v2, v0, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toTerraceOmniboxSuggestion()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v12, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    sget-object v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_SUGGEST:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    :cond_0
    move-object v4, v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->domain:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeContent;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    move-object v8, p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v2, 0x2bc

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move-object v5, v7

    invoke-direct/range {v0 .. v11}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V

    return-object v12
.end method
