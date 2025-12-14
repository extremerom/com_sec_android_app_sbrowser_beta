.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEndDate:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mStartDate:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mEndDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mEndTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mStartDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mStartTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;I)V

    return-object v0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mEndDate:Ljava/lang/String;

    return-object p0
.end method

.method public setEndTime(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mEndTime:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mStartDate:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTime(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mStartTime:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/EventDataDocument$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
