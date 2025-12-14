.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;
    }
.end annotation


# instance fields
.field final arrivalDate:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final arrivalLocation:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final arrivalTime:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final departureDate:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final departureLocation:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final departureTime:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
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

.field final title:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final transport:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->g(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->h(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->i(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->transport:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureDate:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->f(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalDate:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->transport:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureLocation:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalLocation:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureDate:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalDate:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArrivalDate()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalDate:Ljava/lang/String;

    return-object p0
.end method

.method public getArrivalLocation()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getArrivalTime()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalTime:Ljava/lang/String;

    return-object p0
.end method

.method public getDepartureDate()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureDate:Ljava/lang/String;

    return-object p0
.end method

.method public getDepartureLocation()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureTime:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->transport:Ljava/lang/String;

    return-object p0
.end method
