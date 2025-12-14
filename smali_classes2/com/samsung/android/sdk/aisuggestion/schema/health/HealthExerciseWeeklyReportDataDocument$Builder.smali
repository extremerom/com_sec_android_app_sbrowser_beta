.class public final Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00b9\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0012J\u0006\u00104\u001a\u000205J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u00107\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eH\u00c6\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eH\u00c6\u0003J\u0011\u00109\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eH\u00c6\u0003J\u0011\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u00c2\u0001\u0010C\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eH\u00c6\u0001\u00a2\u0006\u0002\u0010DJ\u0013\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010H\u001a\u00020IH\u00d6\u0001J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010J\u001a\u00020\u0003H\u00d6\u0001J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0003J\u0014\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eJ\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0008J\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eJ\u0014\u0010\u000f\u001a\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010#\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0014\"\u0004\u0008%\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0014\"\u0004\u0008\'\u0010\u0016R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010)\"\u0004\u0008-\u0010+R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010#\u001a\u0004\u0008.\u0010 \"\u0004\u0008/\u0010\"R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010)\"\u0004\u00081\u0010+R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010)\"\u0004\u00083\u0010+\u00a8\u0006K"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;",
        "",
        "insightMessageTitle",
        "",
        "insightMessageDescription",
        "cardTitle",
        "weekDate",
        "totalDuration",
        "",
        "totalSessions",
        "totalCalories",
        "topWorkoutsText",
        "workoutItemCount",
        "workoutName",
        "",
        "workoutSessions",
        "workoutCalories",
        "workoutDuration",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getCardTitle",
        "()Ljava/lang/String;",
        "setCardTitle",
        "(Ljava/lang/String;)V",
        "getInsightMessageDescription",
        "setInsightMessageDescription",
        "getInsightMessageTitle",
        "setInsightMessageTitle",
        "getTopWorkoutsText",
        "setTopWorkoutsText",
        "getTotalCalories",
        "setTotalCalories",
        "getTotalDuration",
        "()Ljava/lang/Long;",
        "setTotalDuration",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getTotalSessions",
        "setTotalSessions",
        "getWeekDate",
        "setWeekDate",
        "getWorkoutCalories",
        "()Ljava/util/List;",
        "setWorkoutCalories",
        "(Ljava/util/List;)V",
        "getWorkoutDuration",
        "setWorkoutDuration",
        "getWorkoutItemCount",
        "setWorkoutItemCount",
        "getWorkoutName",
        "setWorkoutName",
        "getWorkoutSessions",
        "setWorkoutSessions",
        "build",
        "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private cardTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topWorkoutsText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private totalCalories:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private totalDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private totalSessions:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private weekDate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workoutCalories:Ljava/util/List;
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

.field private workoutDuration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workoutItemCount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workoutName:Ljava/util/List;
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

.field private workoutSessions:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
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
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
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
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    iput-object p10, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    iput-object p11, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    iput-object p12, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    iput-object p13, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILtb/f;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    move-object p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v2

    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v19, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    if-eqz v13, :cond_5

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    if-eqz v14, :cond_4

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    if-eqz v15, :cond_3

    iget-object v0, v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    if-eqz v0, :cond_2

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILtb/f;)V

    return-object v19

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workoutDuration is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workoutCalories is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workoutSessions is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workoutName is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workoutItemCount is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "weekDate is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cardTitle is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cardTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cardTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    return-object p0
.end method

.method public final component11()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    return-object p0
.end method

.method public final component12()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    return-object p0
.end method

.method public final component13()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 15
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
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
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
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
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v14, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v14
.end method

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
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getCardTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getInsightMessageDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getInsightMessageTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getTopWorkoutsText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalCalories()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getTotalSessions()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    return-object p0
.end method

.method public final getWeekDate()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkoutCalories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    return-object p0
.end method

.method public final getWorkoutDuration()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    return-object p0
.end method

.method public final getWorkoutItemCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getWorkoutName()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    return-object p0
.end method

.method public final getWorkoutSessions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final insightMessageDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageDescription"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final insightMessageTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setCardTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-void
.end method

.method public final setInsightMessageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-void
.end method

.method public final setInsightMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-void
.end method

.method public final setTopWorkoutsText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    return-void
.end method

.method public final setTotalCalories(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setTotalSessions(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    return-void
.end method

.method public final setWeekDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    return-void
.end method

.method public final setWorkoutCalories(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    return-void
.end method

.method public final setWorkoutDuration(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    return-void
.end method

.method public final setWorkoutItemCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    return-void
.end method

.method public final setWorkoutName(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    return-void
.end method

.method public final setWorkoutSessions(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    iget-object v5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    iget-object v9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    iget-object v10, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    iget-object v11, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    const-string v12, "Builder(insightMessageTitle="

    const-string v13, ", insightMessageDescription="

    const-string v14, ", cardTitle="

    invoke-static {v12, v0, v13, v1, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weekDate="

    const-string v12, ", totalDuration="

    invoke-static {v0, v2, v1, v3, v12}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCalories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", topWorkoutsText="

    const-string v2, ", workoutItemCount="

    invoke-static {v0, v6, v1, v7, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workoutName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workoutSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workoutCalories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final topWorkoutsText(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "topWorkoutsText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->topWorkoutsText:Ljava/lang/String;

    return-object p0
.end method

.method public final totalCalories(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "totalCalories"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalCalories:Ljava/lang/String;

    return-object p0
.end method

.method public final totalDuration(J)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final totalSessions(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "totalSessions"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->totalSessions:Ljava/lang/String;

    return-object p0
.end method

.method public final weekDate(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "weekDate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->weekDate:Ljava/lang/String;

    return-object p0
.end method

.method public final workoutCalories(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workoutCalories"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutCalories:Ljava/util/List;

    return-object p0
.end method

.method public final workoutDuration(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workoutDuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutDuration:Ljava/util/List;

    return-object p0
.end method

.method public final workoutItemCount(J)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutItemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final workoutName(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workoutName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutName:Ljava/util/List;

    return-object p0
.end method

.method public final workoutSessions(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workoutSessions"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument$Builder;->workoutSessions:Ljava/util/List;

    return-object p0
.end method
