.class public final Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Companion;,
        Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0019\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eBi\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000eR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0017\u0010\u0013R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
        "",
        "namespace",
        "",
        "id",
        "schemaVersion",
        "",
        "variation",
        "category",
        "clusteringType",
        "momentsFailReason",
        "momentsCountPerWeek",
        "momentsCountPerDay",
        "dcimImageCountPerDay",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getCategory",
        "()Ljava/lang/String;",
        "getClusteringType",
        "getDcimImageCountPerDay",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getId",
        "getMomentsCountPerDay",
        "getMomentsCountPerWeek",
        "getMomentsFailReason",
        "getNamespace",
        "getSchemaVersion",
        "()J",
        "getVariation",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE:Ljava/lang/String; = "ContextualInsightData:MomentSALog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE_VERSION:J = 0x8L


# instance fields
.field private final category:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clusteringType:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dcimImageCountPerDay:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final momentsCountPerDay:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final momentsCountPerWeek:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final momentsFailReason:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final schemaVersion:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field private final variation:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->Companion:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->schemaVersion:J

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->variation:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->category:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->clusteringType:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsFailReason:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsCountPerWeek:Ljava/lang/Long;

    iput-object p10, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsCountPerDay:Ljava/lang/Long;

    iput-object p11, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->dcimImageCountPerDay:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILtb/f;)V
    .locals 13

    and-int/lit8 v0, p12, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ContextualInsightData"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p12, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x8

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    move-object v1, p0

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getClusteringType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->clusteringType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDcimImageCountPerDay()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->dcimImageCountPerDay:Ljava/lang/Long;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentsCountPerDay()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsCountPerDay:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMomentsCountPerWeek()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsCountPerWeek:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMomentsFailReason()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->momentsFailReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final getSchemaVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->schemaVersion:J

    return-wide v0
.end method

.method public final getVariation()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;->variation:Ljava/lang/String;

    return-object p0
.end method
