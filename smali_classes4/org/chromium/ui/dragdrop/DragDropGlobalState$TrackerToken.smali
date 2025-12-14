.class public final Lorg/chromium/ui/dragdrop/DragDropGlobalState$TrackerToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/dragdrop/DragDropGlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackerToken"
.end annotation


# instance fields
.field final mKey:J


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/chromium/ui/dragdrop/DragDropGlobalState$TrackerToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/chromium/ui/dragdrop/DragDropGlobalState$TrackerToken;

    iget-wide v2, p1, Lorg/chromium/ui/dragdrop/DragDropGlobalState$TrackerToken;->mKey:J

    iget-wide p0, p0, Lorg/chromium/ui/dragdrop/DragDropGlobalState$TrackerToken;->mKey:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
