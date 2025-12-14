.class public interface abstract Lcom/google/ar/core/Trackable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAnchors()Ljava/util/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrackingState()Lcom/google/ar/core/TrackingState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
