.class public final Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;
.super Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Companion;,
        Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0002\u001f B\u0083\u0001\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u001c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;",
        "namespace",
        "",
        "reasonDescription",
        "insightMessageTitle",
        "insightMessageDescription",
        "workoutImage",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "workoutName",
        "workoutPrimaryData",
        "workoutPrimaryDataSemantic",
        "workoutSecondaryDataIcon",
        "",
        "workoutSecondaryData",
        "workoutSecondaryDataSemantic",
        "viewRecordButton",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)V",
        "getViewRecordButton",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
        "getWorkoutImage",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "getWorkoutName",
        "()Ljava/lang/String;",
        "getWorkoutPrimaryData",
        "getWorkoutPrimaryDataSemantic",
        "getWorkoutSecondaryData",
        "()Ljava/util/List;",
        "getWorkoutSecondaryDataIcon",
        "getWorkoutSecondaryDataSemantic",
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
.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_AVERAGE_PACE:Ljava/lang/String; = "average pace"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_AVERAGE_SPEED:Ljava/lang/String; = "average speed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_CALORIE:Ljava/lang/String; = "calorie"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_DISTANCE:Ljava/lang/String; = "distance"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_DURATION:Ljava/lang/String; = "duration"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_ELEVATION_GAIN:Ljava/lang/String; = "elevation gain"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_REPS:Ljava/lang/String; = "reps"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_SETS:Ljava/lang/String; = "sets"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SEMANTIC_STEP:Ljava/lang/String; = "step"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE:Ljava/lang/String; = "ContextualInsightData:HealthExerciseWorkoutResult"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE_VERSION:J = 0x8L


# instance fields
.field private final viewRecordButton:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final workoutImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutName:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutPrimaryData:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutPrimaryDataSemantic:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutSecondaryData:Ljava/util/List;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutSecondaryDataIcon:Ljava/util/List;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workoutSecondaryDataSemantic:Ljava/util/List;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->Companion:Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    const-string v0, "namespace"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reasonDescription"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightMessageTitle"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightMessageDescription"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutImage"

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutName"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutPrimaryData"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutPrimaryDataSemantic"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutSecondaryDataIcon"

    invoke-static {v12, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutSecondaryData"

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workoutSecondaryDataSemantic"

    invoke-static {v14, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iput-object v9, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutName:Ljava/lang/String;

    iput-object v10, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutPrimaryData:Ljava/lang/String;

    iput-object v11, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutPrimaryDataSemantic:Ljava/lang/String;

    iput-object v12, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryDataIcon:Ljava/util/List;

    iput-object v13, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryData:Ljava/util/List;

    iput-object v14, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryDataSemantic:Ljava/util/List;

    move-object/from16 v0, p12

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->viewRecordButton:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;ILtb/f;)V
    .locals 14

    and-int/lit8 v0, p13, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ContextualInsightData"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p13, 0x2

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    move-object v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)V

    return-void
.end method


# virtual methods
.method public final getViewRecordButton()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->viewRecordButton:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public final getWorkoutImage()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public final getWorkoutName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutName:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkoutPrimaryData()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutPrimaryData:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkoutPrimaryDataSemantic()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutPrimaryDataSemantic:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkoutSecondaryData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryData:Ljava/util/List;

    return-object p0
.end method

.method public final getWorkoutSecondaryDataIcon()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryDataIcon:Ljava/util/List;

    return-object p0
.end method

.method public final getWorkoutSecondaryDataSemantic()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;->workoutSecondaryDataSemantic:Ljava/util/List;

    return-object p0
.end method
