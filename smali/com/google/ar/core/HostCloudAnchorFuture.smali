.class public Lcom/google/ar/core/HostCloudAnchorFuture;
.super Lcom/google/ar/core/FutureImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/HostCloudAnchorFuture$CallbackWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/FutureImpl;-><init>(Lcom/google/ar/core/Session;JJ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()Z
    .locals 0

    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->cancel()Z

    move-result p0

    return p0
.end method

.method public getResultCloudAnchorId()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/FutureImpl;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HostCloudAnchorFuture;->nativeGetResultCloudAnchorId(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResultCloudAnchorState()Lcom/google/ar/core/Anchor$CloudAnchorState;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/FutureImpl;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HostCloudAnchorFuture;->nativeGetResultCloudAnchorState(JJ)I

    move-result p0

    invoke-static {p0}, Lcom/google/ar/core/Anchor$CloudAnchorState;->forNumber(I)Lcom/google/ar/core/Anchor$CloudAnchorState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getState()Lcom/google/ar/core/FutureState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->getState()Lcom/google/ar/core/FutureState;

    move-result-object p0

    return-object p0
.end method

.method public native nativeGetResultCloudAnchorId(JJ)Ljava/lang/String;
.end method

.method public native nativeGetResultCloudAnchorState(JJ)I
.end method
