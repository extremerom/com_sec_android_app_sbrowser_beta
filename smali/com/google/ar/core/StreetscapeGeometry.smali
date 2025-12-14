.class public Lcom/google/ar/core/StreetscapeGeometry;
.super Lcom/google/ar/core/TrackableBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/StreetscapeGeometry$Type;,
        Lcom/google/ar/core/StreetscapeGeometry$Quality;
    }
.end annotation


# direct methods
.method public constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    return-void
.end method

.method private native nativeAcquireMesh(JJ)J
.end method

.method private native nativeGetMeshPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetQuality(JJ)I
.end method

.method private native nativeGetType(JJ)I
.end method

.method private native nativeReleaseStreetscapeGeometry(JJ)V
.end method


# virtual methods
.method public bridge synthetic createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 6

    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v4, v4, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/ar/core/StreetscapeGeometry;->nativeReleaseStreetscapeGeometry(JJ)V

    iput-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    :cond_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->finalize()V

    return-void
.end method

.method public bridge synthetic getAnchors()Ljava/util/Collection;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getMesh()Lcom/google/ar/core/Mesh;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/StreetscapeGeometry;->nativeAcquireMesh(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    new-instance v2, Lcom/google/ar/core/Mesh;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/ar/core/Mesh;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeshPose()Lcom/google/ar/core/Pose;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/StreetscapeGeometry;->nativeGetMeshPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object p0

    return-object p0
.end method

.method public getQuality()Lcom/google/ar/core/StreetscapeGeometry$Quality;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/StreetscapeGeometry;->nativeGetQuality(JJ)I

    move-result p0

    invoke-static {p0}, Lcom/google/ar/core/StreetscapeGeometry$Quality;->forNumber(I)Lcom/google/ar/core/StreetscapeGeometry$Quality;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lcom/google/ar/core/StreetscapeGeometry$Type;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/StreetscapeGeometry;->nativeGetType(JJ)I

    move-result p0

    invoke-static {p0}, Lcom/google/ar/core/StreetscapeGeometry$Type;->forNumber(I)Lcom/google/ar/core/StreetscapeGeometry$Type;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

    return p0
.end method
