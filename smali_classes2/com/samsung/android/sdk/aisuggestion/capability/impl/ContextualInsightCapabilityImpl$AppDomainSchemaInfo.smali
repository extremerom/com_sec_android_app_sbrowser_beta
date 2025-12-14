.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDomainSchemaInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;",
        "",
        "schemaType",
        "",
        "schemaTypeVersion",
        "",
        "classSimpleName",
        "appName",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V",
        "getAppName",
        "()Ljava/lang/String;",
        "getClassSimpleName",
        "getSchemaType",
        "getSchemaTypeVersion",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final appName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final classSimpleName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final schemaType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final schemaTypeVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "schemaType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classSimpleName"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "schemaType"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "classSimpleName"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appName"

    invoke-static {p5, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public final getClassSimpleName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSchemaType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSchemaTypeVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaType:Ljava/lang/String;

    iget-wide v1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->schemaTypeVersion:J

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->classSimpleName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->appName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppDomainSchemaInfo(schemaType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", schemaTypeVersion="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", classSimpleName="

    const-string v1, ", appName="

    invoke-static {v4, v0, v3, v1, p0}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
