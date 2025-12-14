.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mArrivalDate:Ljava/lang/String;

.field private mArrivalLocation:Ljava/lang/String;

.field private mArrivalTime:Ljava/lang/String;

.field private mDepartureDate:Ljava/lang/String;

.field private mDepartureLocation:Ljava/lang/String;

.field private mDepartureTime:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTransport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalLocation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureLocation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mTransport:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;I)V

    return-object v0
.end method

.method public setArrivalDate(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalDate:Ljava/lang/String;

    return-object p0
.end method

.method public setArrivalLocation(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setArrivalTime(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mArrivalTime:Ljava/lang/String;

    return-object p0
.end method

.method public setDepartureDate(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDepartureLocation(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setDepartureTime(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mDepartureTime:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTransport(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->mTransport:Ljava/lang/String;

    return-object p0
.end method
