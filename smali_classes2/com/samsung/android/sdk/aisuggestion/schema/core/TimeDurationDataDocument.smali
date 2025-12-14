.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;
    }
.end annotation


# instance fields
.field final dailyTime:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final endTimMillis:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field

.field final startTimeMillis:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->id:Ljava/lang/String;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->startTimeMillis:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->endTimMillis:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->dailyTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ContextualInsightData"

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->startTimeMillis:J

    iput-wide p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->endTimMillis:J

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->dailyTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDailyTime()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->dailyTime:Ljava/lang/String;

    return-object p0
.end method

.method public getEndTimMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->endTimMillis:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;->startTimeMillis:J

    return-wide v0
.end method
