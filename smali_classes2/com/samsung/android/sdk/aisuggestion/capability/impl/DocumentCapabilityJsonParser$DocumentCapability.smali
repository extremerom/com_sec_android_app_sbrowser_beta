.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentCapability"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u0015\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u00c6\u0003J3\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;",
        "",
        "version",
        "",
        "coreSchemaCapability",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
        "appDomainCapability",
        "",
        "",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
        "(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)V",
        "getAppDomainCapability",
        "()Ljava/util/Map;",
        "getCoreSchemaCapability",
        "()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
        "getVersion",
        "()J",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appDomainCapability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:J


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)V
    .locals 1
    .param p3    # Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coreSchemaCapability"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDomainCapability"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->copy(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    return-wide v0
.end method

.method public final component2()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    return-object p0
.end method

.method public final component3()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;
    .locals 0
    .param p3    # Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "coreSchemaCapability"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appDomainCapability"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;-><init>(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppDomainCapability()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    return-object p0
.end method

.method public final getCoreSchemaCapability()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    return-object p0
.end method

.method public final getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->version:J

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->coreSchemaCapability:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->appDomainCapability:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DocumentCapability(version="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", coreSchemaCapability="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appDomainCapability="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
