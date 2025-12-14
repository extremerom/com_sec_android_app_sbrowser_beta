.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;
    }
.end annotation


# instance fields
.field final description:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final feedbackId:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field final image:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field final name:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field

.field final shortDescription:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final shortName:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final uri:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->f(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->h(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->g(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->i(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->uri:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->image:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->feedbackId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;)V
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
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ContextualInsightData"

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortDescription:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->uri:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->image:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iput-object p9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iput-object p10, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->feedbackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getFeedbackId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->feedbackId:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public getImage()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->image:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->shortName:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;->uri:Ljava/lang/String;

    return-object p0
.end method
