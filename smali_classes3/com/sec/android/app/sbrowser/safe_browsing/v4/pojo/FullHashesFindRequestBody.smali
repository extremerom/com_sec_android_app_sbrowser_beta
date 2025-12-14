.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R*\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;",
        "client",
        "",
        "",
        "clientStates",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;",
        "threatInfo",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;",
        "getClient",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;",
        "setClient",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;)V",
        "Ljava/util/List;",
        "getClientStates",
        "()Ljava/util/List;",
        "setClientStates",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;",
        "getThreatInfo",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;",
        "setThreatInfo",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V",
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
.field private client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clientStates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientStates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threatInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;ILtb/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V

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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getClient()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    return-object p0
.end method

.method public final getThreatInfo()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setClient(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    return-void
.end method

.method public final setClientStates(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    return-void
.end method

.method public final setThreatInfo(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->clientStates:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->threatInfo:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FullHashesFindRequestBody(client="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clientStates="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", threatInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
