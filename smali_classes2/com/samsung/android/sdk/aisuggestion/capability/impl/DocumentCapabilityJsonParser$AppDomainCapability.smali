.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDomainCapability"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJH\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
        "",
        "versionTarget",
        "",
        "versionMin",
        "versionExcluded",
        "",
        "oneUiVersionMin",
        "killSwitch",
        "",
        "(JJLjava/util/List;JLjava/lang/Boolean;)V",
        "getKillSwitch",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getOneUiVersionMin",
        "()J",
        "getVersionExcluded",
        "()Ljava/util/List;",
        "getVersionMin",
        "getVersionTarget",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(JJLjava/util/List;JLjava/lang/Boolean;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
        "equals",
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
.field private final killSwitch:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final oneUiVersionMin:J

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
.method public constructor <init>(JJLjava/util/List;JLjava/lang/Boolean;)V
    .locals 1
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "versionExcluded"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    iput-wide p6, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;JJLjava/util/List;JLjava/lang/Boolean;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    goto :goto_3

    :cond_3
    move-wide v6, p6

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-object p5, v5

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->copy(JJLjava/util/List;JLjava/lang/Boolean;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

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

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    return-object p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final copy(JJLjava/util/List;JLjava/lang/Boolean;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;
    .locals 10
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "versionExcluded"

    move-object v6, p5

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;-><init>(JJLjava/util/List;JLjava/lang/Boolean;)V

    return-object v0
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
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getKillSwitch()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getOneUiVersionMin()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    return-wide v0
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

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    return-object p0
.end method

.method public final getVersionMin()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    return-wide v0
.end method

.method public final getVersionTarget()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    invoke-static {v3, v4, v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionTarget:J

    iget-wide v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionMin:J

    iget-object v4, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->versionExcluded:Ljava/util/List;

    iget-wide v5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->oneUiVersionMin:J

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->killSwitch:Ljava/lang/Boolean;

    const-string v7, "AppDomainCapability(versionTarget="

    const-string v8, ", versionMin="

    invoke-static {v0, v1, v7, v8}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionExcluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oneUiVersionMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", killSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
