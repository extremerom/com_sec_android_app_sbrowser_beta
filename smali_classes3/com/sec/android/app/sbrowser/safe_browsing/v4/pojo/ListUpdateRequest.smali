.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u000b\"\u0004\u0008\u0018\u0010\u0016R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u000b\"\u0004\u0008\u001a\u0010\u0016R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;",
        "",
        "",
        "threatType",
        "platformType",
        "threatEntryType",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;",
        "constraints",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getThreatType",
        "setThreatType",
        "(Ljava/lang/String;)V",
        "getPlatformType",
        "setPlatformType",
        "getThreatEntryType",
        "setThreatEntryType",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;",
        "getConstraints",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;",
        "setConstraints",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V",
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
.field private constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "constraints"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;ILtb/f;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V

    return-void
.end method


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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setConstraints(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    return-void
.end method

.method public final setPlatformType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    return-void
.end method

.method public final setThreatEntryType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    return-void
.end method

.method public final setThreatType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->platformType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->threatEntryType:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->constraints:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    const-string v3, "ListUpdateRequest(threatType="

    const-string v4, ", platformType="

    const-string v5, ", threatEntryType="

    invoke-static {v3, v0, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
