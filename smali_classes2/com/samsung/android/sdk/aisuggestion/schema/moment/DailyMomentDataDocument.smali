.class public final Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;
.super Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Companion;,
        Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008(\u0008\u0007\u0018\u0000 H2\u00020\u0001:\u0002GHB\u0087\u0002\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010 \u001a\u0004\u0018\u00010!\u00a2\u0006\u0002\u0010\"R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R \u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010+\u0012\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R \u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010+\u0012\u0004\u0008,\u0010(\u001a\u0004\u0008-\u0010*R \u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010+\u0012\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*R \u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010+\u0012\u0004\u00080\u0010(\u001a\u0004\u00081\u0010*R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00105\u001a\u0004\u0008\u001d\u00104R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010$R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u00087\u0010*R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010$R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u00089\u0010*R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010$R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010$R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010$R\u0018\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010A\u001a\u0004\u0008?\u0010@R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010A\u001a\u0004\u0008B\u0010@R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010&R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010$R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u0008E\u0010*R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010$\u00a8\u0006I"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;",
        "namespace",
        "",
        "reasonDescription",
        "insightMessageTitle",
        "insightMessageDescription",
        "momentId",
        "startAt",
        "",
        "endAt",
        "imagePathList",
        "",
        "title",
        "description",
        "listenDescription",
        "mediaSessionMusicTitle",
        "mediaSessionMusicDuration",
        "mediaSessionVideoTitle",
        "mediaSessionVideoDuration",
        "repLocationLatitude",
        "",
        "repLocationLongitude",
        "videoPath",
        "videoDuration",
        "filteredCount",
        "failedOnDeviceCount",
        "failedMinimumImageCount",
        "failedMinimumContentsCount",
        "isWeeklyMoment",
        "",
        "momentSaEventId",
        "momentSaLog",
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getEndAt",
        "()J",
        "getFailedMinimumContentsCount$annotations",
        "()V",
        "getFailedMinimumContentsCount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getFailedMinimumImageCount$annotations",
        "getFailedMinimumImageCount",
        "getFailedOnDeviceCount$annotations",
        "getFailedOnDeviceCount",
        "getFilteredCount$annotations",
        "getFilteredCount",
        "getImagePathList",
        "()Ljava/util/List;",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getListenDescription",
        "getMediaSessionMusicDuration",
        "getMediaSessionMusicTitle",
        "getMediaSessionVideoDuration",
        "getMediaSessionVideoTitle",
        "getMomentId",
        "getMomentSaEventId",
        "getMomentSaLog",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
        "getRepLocationLatitude",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getRepLocationLongitude",
        "getStartAt",
        "getTitle",
        "getVideoDuration",
        "getVideoPath",
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
.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE:Ljava/lang/String; = "ContextualInsightData:DailyMoment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE_VERSION:J = 0xfL


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endAt:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field private final failedMinimumContentsCount:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final failedMinimumImageCount:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final failedOnDeviceCount:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final filteredCount:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imagePathList:Ljava/util/List;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
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

.field private final isWeeklyMoment:Ljava/lang/Boolean;
    .annotation build Landroidx/appsearch/annotation/Document$BooleanProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listenDescription:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaSessionMusicDuration:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaSessionMusicTitle:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaSessionVideoDuration:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaSessionVideoTitle:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final momentId:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final momentSaEventId:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repLocationLatitude:Ljava/lang/Double;
    .annotation build Landroidx/appsearch/annotation/Document$DoubleProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repLocationLongitude:Ljava/lang/Double;
    .annotation build Landroidx/appsearch/annotation/Document$DoubleProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startAt:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoDuration:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final videoPath:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->Companion:Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V
    .locals 11
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
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
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
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    const-string v0, "namespace"

    move-object v1, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reasonDescription"

    move-object v4, p2

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightMessageTitle"

    move-object v5, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightMessageDescription"

    move-object v6, p4

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "momentId"

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentId:Ljava/lang/String;

    move-wide/from16 v0, p6

    iput-wide v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->startAt:J

    move-wide/from16 v0, p8

    iput-wide v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->endAt:J

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->imagePathList:Ljava/util/List;

    iput-object v9, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->title:Ljava/lang/String;

    iput-object v10, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->description:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->listenDescription:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionMusicTitle:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionMusicDuration:Ljava/lang/Long;

    move-object/from16 v0, p16

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionVideoTitle:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionVideoDuration:Ljava/lang/Long;

    move-object/from16 v0, p18

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->repLocationLatitude:Ljava/lang/Double;

    move-object/from16 v0, p19

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->repLocationLongitude:Ljava/lang/Double;

    move-object/from16 v0, p20

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->videoPath:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->videoDuration:Ljava/lang/Long;

    move-object/from16 v0, p22

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->filteredCount:Ljava/lang/Long;

    move-object/from16 v0, p23

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedOnDeviceCount:Ljava/lang/Long;

    move-object/from16 v0, p24

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedMinimumImageCount:Ljava/lang/Long;

    move-object/from16 v0, p25

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedMinimumContentsCount:Ljava/lang/Long;

    move-object/from16 v0, p26

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->isWeeklyMoment:Ljava/lang/Boolean;

    move-object/from16 v0, p27

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentSaEventId:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, v7, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;ILtb/f;)V
    .locals 30

    and-int/lit8 v0, p29, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ContextualInsightData"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v0, p29, 0x2

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v0, p29, 0x4

    if-eqz v0, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v0, p29, 0x8

    if-eqz v0, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    invoke-direct/range {v1 .. v29}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V

    return-void
.end method

.method public static synthetic getFailedMinimumContentsCount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method

.method public static synthetic getFailedMinimumImageCount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method

.method public static synthetic getFailedOnDeviceCount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method

.method public static synthetic getFilteredCount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->endAt:J

    return-wide v0
.end method

.method public final getFailedMinimumContentsCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedMinimumContentsCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFailedMinimumImageCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedMinimumImageCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFailedOnDeviceCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->failedOnDeviceCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFilteredCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->filteredCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getImagePathList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->imagePathList:Ljava/util/List;

    return-object p0
.end method

.method public final getListenDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->listenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaSessionMusicDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionMusicDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaSessionMusicTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionMusicTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaSessionVideoDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionVideoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaSessionVideoTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->mediaSessionVideoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentSaEventId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentSaEventId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentSaLog()Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-object p0
.end method

.method public final getRepLocationLatitude()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->repLocationLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getRepLocationLongitude()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->repLocationLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getStartAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->startAt:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->videoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getVideoPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public final isWeeklyMoment()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;->isWeeklyMoment:Ljava/lang/Boolean;

    return-object p0
.end method
