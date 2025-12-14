.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Entity;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0012\u001a\u0004\u0008\u0015\u0010\u0014R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0016\u001a\u0004\u0008\u0017\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;",
        "",
        "",
        "id",
        "threatDescriptorEntityId",
        "",
        "prefixHash",
        "<init>",
        "(JJLjava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "()J",
        "getThreatDescriptorEntityId",
        "Ljava/lang/String;",
        "getPrefixHash",
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
.field private final id:J
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private final prefixHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final threatDescriptorEntityId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefixHash"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILtb/f;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;-><init>(JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    return-wide v0
.end method

.method public final getPrefixHash()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getThreatDescriptorEntityId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->id:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->threatDescriptorEntityId:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->prefixHash:Ljava/lang/String;

    const-string v4, "ThreatDescriptorHashesEntity(id="

    const-string v5, ", threatDescriptorEntityId="

    invoke-static {v0, v1, v4, v5}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", prefixHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
