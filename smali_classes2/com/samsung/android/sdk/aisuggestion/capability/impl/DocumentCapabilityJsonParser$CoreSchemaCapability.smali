.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoreSchemaCapability"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J-\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
        "",
        "versionTarget",
        "",
        "versionMin",
        "versionExcluded",
        "",
        "(JJLjava/util/List;)V",
        "getVersionExcluded",
        "()Ljava/util/List;",
        "getVersionMin",
        "()J",
        "getVersionTarget",
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
        "",
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
.field private final versionExcluded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final versionMin:J

.field private final versionTarget:J


# direct methods
.method public constructor <init>(JJLjava/util/List;)V
    .locals 1
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "versionExcluded"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;JJLjava/util/List;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->copy(JJLjava/util/List;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    return-wide v0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    return-object p0
.end method

.method public final copy(JJLjava/util/List;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .locals 6
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "versionExcluded"

    invoke-static {p5, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;-><init>(JJLjava/util/List;)V

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
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getVersionExcluded()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    return-object p0
.end method

.method public final getVersionMin()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    return-wide v0
.end method

.method public final getVersionTarget()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionTarget:J

    iget-wide v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionMin:J

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->versionExcluded:Ljava/util/List;

    const-string v4, "CoreSchemaCapability(versionTarget="

    const-string v5, ", versionMin="

    invoke-static {v0, v1, v4, v5}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionExcluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
