.class Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerData"
.end annotation


# instance fields
.field public touching:Z

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->x:F

    iput p2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->y:F

    iput-boolean p3, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->touching:Z

    return-void
.end method
