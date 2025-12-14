.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookMarkAddDeleteTransition;
.super LY2/n0;
.source "SourceFile"


# static fields
.field private static sAddDelayDuration:J = 0x64L


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, LY2/n0;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookMarkAddDeleteTransition;->init(ZJ)V

    return-void
.end method

.method private init(ZJ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, LY2/y;

    invoke-direct {p1, v0}, LY2/y;-><init>(I)V

    invoke-virtual {p1, p2, p3}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {p1, p2, p3}, LY2/f0;->setStartDelay(J)LY2/f0;

    invoke-virtual {p0, p1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    goto :goto_0

    :cond_0
    new-instance p1, LY2/y;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, LY2/y;-><init>(I)V

    invoke-virtual {p1, p2, p3}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {p0, p1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object p1

    new-instance v1, LY2/i;

    invoke-direct {v1}, LY2/i;-><init>()V

    invoke-virtual {v1, p2, p3}, LY2/f0;->setDuration(J)LY2/f0;

    sget-wide v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookMarkAddDeleteTransition;->sAddDelayDuration:J

    invoke-virtual {v1, v2, v3}, LY2/f0;->setStartDelay(J)LY2/f0;

    invoke-virtual {p1, v1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    new-instance p1, LY2/y;

    invoke-direct {p1, v0}, LY2/y;-><init>(I)V

    invoke-virtual {p1, p2, p3}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {p1, p2, p3}, LY2/f0;->setStartDelay(J)LY2/f0;

    invoke-virtual {p0, p1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LY2/n0;->setOrdering(I)LY2/n0;

    return-void
.end method
