.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDailyTime:Ljava/lang/String;

.field private mEndTimeMillis:J

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mDailyTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mEndTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mStartTimeMillis:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;I)V

    return-object v0
.end method

.method public setDailyTime(Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mDailyTime:Ljava/lang/String;

    return-object p0
.end method

.method public setDailyTimes(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mDailyTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setEndTimMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mEndTimeMillis:J

    return-object p0
.end method

.method public setEndTimeMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mEndTimeMillis:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTimeMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->mStartTimeMillis:J

    return-object p0
.end method
