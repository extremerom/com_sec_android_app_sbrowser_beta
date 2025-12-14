.class Lcom/sec/android/app/sbrowser/download/ui/DHMainView$DownloadDeleteTransition;
.super LY2/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadDeleteTransition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LY2/n0;-><init>()V

    new-instance v0, LY2/y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LY2/y;-><init>(I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    const v3, 0x7f0b0444

    invoke-virtual {v0, v3}, LY2/f0;->addTarget(I)LY2/f0;

    invoke-virtual {p0, v0}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    new-instance v0, LY2/i;

    invoke-direct {v0}, LY2/i;-><init>()V

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, LY2/f0;->setStartDelay(J)LY2/f0;

    invoke-virtual {p0, v0}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LY2/n0;->setOrdering(I)LY2/n0;

    return-void
.end method
