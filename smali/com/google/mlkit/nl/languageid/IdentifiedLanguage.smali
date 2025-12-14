.class public final Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    value = "language_id_jni.cc"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "language_id_jni.cc"
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    iget v1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    iget v3, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lo3/t;

    const-string v1, "IdentifiedLanguage"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo3/t;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lo3/t;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lo3/t;-><init>(I)V

    iget-object v2, v0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v2, Lo3/t;

    iput-object v1, v2, Lo3/t;->d:Ljava/lang/Object;

    iput-object v1, v0, Lo3/t;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    iput-object v2, v1, Lo3/t;->c:Ljava/lang/Object;

    const-string v2, "languageTag"

    iput-object v2, v1, Lo3/t;->b:Ljava/lang/Object;

    iget p0, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    new-instance v1, LG5/U;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lo3/t;-><init>(I)V

    iget-object v2, v0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v2, Lo3/t;

    iput-object v1, v2, Lo3/t;->d:Ljava/lang/Object;

    iput-object v1, v0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p0, v1, Lo3/t;->c:Ljava/lang/Object;

    const-string p0, "confidence"

    iput-object p0, v1, Lo3/t;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lo3/t;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
