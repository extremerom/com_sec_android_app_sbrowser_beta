.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001e\u001dB%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B7\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0019\u001a\u0004\u0008\u001c\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;",
        "",
        "maxLength",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;",
        "shortNotePolicy",
        "longNotePolicy",
        "<init>",
        "(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;)V",
        "seen0",
        "Ldd/j;",
        "serializationConstructorMarker",
        "(IILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Ldd/j;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getMaxLength",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;",
        "getShortNotePolicy",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;",
        "getLongNotePolicy",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxLength:I

.field private final shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->$stable:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Ldd/j;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/16 v2, 0x1f40

    if-nez v1, :cond_0

    iput v2, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    iput v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    :goto_0
    and-int/lit8 v1, p1, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/16 v5, 0x12c0

    const/16 v6, 0xc80

    const/16 v7, 0x640

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v11, v12}, [Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    iput-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    goto :goto_2

    :cond_1
    move-object/from16 v1, p3

    goto :goto_1

    :goto_2
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x1900

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v6, v5, v10, v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_3
    iput-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    goto :goto_4

    :cond_2
    move-object/from16 v1, p4

    goto :goto_3

    :goto_4
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;)V
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shortNotePolicy"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longNotePolicy"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;ILtb/f;)V
    .locals 17

    and-int/lit8 v0, p4, 0x1

    const/16 v1, 0x1f40

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    :goto_0
    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/16 v5, 0x12c0

    const/16 v6, 0xc80

    const/16 v7, 0x640

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v11, v12}, [Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v10, p4, 0x4

    if-eqz v10, :cond_2

    new-instance v10, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x1900

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v7, v6, v5, v11, v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, p0

    goto :goto_2

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v10, p3

    :goto_2
    invoke-direct {v1, v0, v2, v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;-><init>(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;)V

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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLongNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    return-object p0
.end method

.method public getMaxLength()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    return p0
.end method

.method public getShortNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->maxLength:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->shortNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->longNotePolicy:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DefaultPolicyInfo(maxLength="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", shortNotePolicy="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", longNotePolicy="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
