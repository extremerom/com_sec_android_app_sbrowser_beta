.class public final Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001f\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R-\u0010\u0008\u001a\u001e\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\n0\n\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;",
        "",
        "()V",
        "classes",
        "",
        "Ljava/lang/Class;",
        "getClasses",
        "()Ljava/util/List;",
        "simpleNameMap",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "getSimpleNameMap",
        "()Ljava/util/Map;",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final simpleNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 54

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;

    const-class v50, Lcom/samsung/android/sdk/aisuggestion/schema/message/SuspiciousMessageBlockReportDataDocument;

    const-class v51, Lcom/samsung/android/sdk/aisuggestion/schema/message/SuspiciousMessageBlockSuggestionDataDocument;

    const-class v1, Lcom/samsung/android/sdk/aisuggestion/schema/clip/transportation/CapturedTodayTransportationDataDocument;

    const-class v2, Lcom/samsung/android/sdk/aisuggestion/schema/clip/coupon/CapturedImminentCouponDataDocument;

    const-class v3, Lcom/samsung/android/sdk/aisuggestion/schema/clip/event/CapturedImminentEventDataDocument;

    const-class v4, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;

    const-class v5, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageSuggestionDataDocument;

    const-class v6, Lcom/samsung/android/sdk/aisuggestion/schema/gallery/GalleryStorySuggestionDataDocument;

    const-class v7, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTServiceReportDataDocument;

    const-class v8, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/UnattendedIoTDeviceAlertDataDocument;

    const-class v9, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnergySavingSuggestionDataDocument;

    const-class v10, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTDeviceDataDocument;

    const-class v11, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;

    const-class v12, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/SleepingEnvironmentReportDataDocument;

    const-class v13, Lcom/samsung/android/sdk/aisuggestion/schema/reminder/AfterParkingSuggestionDataDocument;

    const-class v14, Lcom/samsung/android/sdk/aisuggestion/schema/routines/NudgeRoutineSuggestionDataDocument;

    const-class v15, Lcom/samsung/android/sdk/aisuggestion/schema/routines/ReminderCardRoutineDataDocument;

    const-class v16, Lcom/samsung/android/sdk/aisuggestion/schema/routines/ReminderRoutineDataDocument;

    const-class v17, Lcom/samsung/android/sdk/aisuggestion/schema/routines/RoutineGenerationSuggestionDataDocument;

    const-class v18, Lcom/samsung/android/sdk/aisuggestion/schema/routines/RoutineDeviceDeviationAlertDataDocument;

    const-class v19, Lcom/samsung/android/sdk/aisuggestion/schema/routines/RoutineActionDataDocument;

    const-class v20, Lcom/samsung/android/sdk/aisuggestion/schema/routines/UsefulRoutineSuggestionDataDocument;

    const-class v21, Lcom/samsung/android/sdk/aisuggestion/schema/sbrowser/ReadArticlesDataDocument;

    const-class v22, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;

    const-class v23, Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    const-class v24, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/gift/ImminentCouponAlertDataDocument;

    const-class v25, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/gift/ReceivedGiftDataDocument;

    const-class v26, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/ticket/EventTicketDataDocument;

    const-class v27, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/ticket/TravelTicketDataDocument;

    const-class v28, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/transit/TransitBalanceReminderDataDocument;

    const-class v29, Lcom/samsung/android/sdk/aisuggestion/schema/wallet/transit/TransitKrDataDocument;

    const-class v30, Lcom/samsung/android/sdk/aisuggestion/schema/wellbeing/PhoneWeeklyComfortCareDataDocument;

    const-class v31, Lcom/samsung/android/sdk/aisuggestion/schema/wellbeing/PhoneWeeklyUsageDataDocument;

    const-class v32, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;

    const-class v33, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthDailyActivityDataDocument;

    const-class v34, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthMindfulnessSuggestionDataDocument;

    const-class v35, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthSleepBedtimeDataDocument;

    const-class v36, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthSleepCoachingDataDocument;

    const-class v37, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthSleepScoreDataDocument;

    const-class v38, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthMedicationDataDocument;

    const-class v39, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthWaterDataDocument;

    const-class v40, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthBIADataDocument;

    const-class v41, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthBloodPressureDataDocument;

    const-class v42, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWeeklyReportDataDocument;

    const-class v43, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthExerciseWorkoutResultDataDocument;

    const-class v44, Lcom/samsung/android/sdk/aisuggestion/schema/knox/KnoxComplianceDataDocument;

    const-class v45, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantExpressPackageDataDocument;

    const-class v46, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentReportDataDocument;

    const-class v47, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;

    const-class v48, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;

    const-class v49, Lcom/samsung/android/sdk/aisuggestion/schema/map/TimeToLeaveSuggestionDataDocument;

    const-class v52, Lcom/samsung/android/sdk/aisuggestion/schema/message/DeliveryMessageDailyReportDataDocument;

    const-class v53, Lcom/samsung/android/sdk/aisuggestion/schema/message/DeliveryMessageDataDocument;

    filled-new-array/range {v1 .. v53}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;->classes:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;->simpleNameMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;->classes:Ljava/util/List;

    return-object p0
.end method

.method public final getSimpleNameMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/schema/AppDomainDocumentClasses;->simpleNameMap:Ljava/util/Map;

    return-object p0
.end method
