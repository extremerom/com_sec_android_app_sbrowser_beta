.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUtil$NotificationSearchListDeleteTransition;
.super LY2/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationSearchListDeleteTransition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, LY2/n0;-><init>()V

    new-instance v0, LY2/i;

    invoke-direct {v0}, LY2/i;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, LY2/f0;->setStartDelay(J)LY2/f0;

    new-instance v3, LY2/y;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LY2/y;-><init>(I)V

    invoke-virtual {v3, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {v3, v1, v2}, LY2/f0;->setStartDelay(J)LY2/f0;

    const/4 v4, 0x4

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, LY2/f0;->setMatchOrder([I)V

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, LY2/f0;->setMatchOrder([I)V

    new-instance v4, LY2/y;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LY2/y;-><init>(I)V

    invoke-virtual {v4, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {p0, v4}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object v1

    invoke-virtual {v1, v0}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    invoke-virtual {p0, v3}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LY2/n0;->setOrdering(I)LY2/n0;

    return-void
.end method
