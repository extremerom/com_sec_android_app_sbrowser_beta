.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractSentencesResponse"
.end annotation


# instance fields
.field private isArticle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_article"
    .end annotation
.end field

.field private sentences:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sentences"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->isArticle:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->sentences:Ljava/util/Map;

    return-object p0
.end method
