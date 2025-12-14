.class public final LY2/b;
.super LY2/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LY2/n0;-><init>()V

    invoke-virtual {p0}, LY2/b;->f()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LY2/n0;->setOrdering(I)LY2/n0;

    new-instance v1, LY2/y;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LY2/y;-><init>(I)V

    invoke-virtual {p0, v1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object p0

    new-instance v1, LY2/i;

    invoke-direct {v1}, LY2/i;-><init>()V

    invoke-virtual {p0, v1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object p0

    new-instance v1, LY2/y;

    invoke-direct {v1, v0}, LY2/y;-><init>(I)V

    invoke-virtual {p0, v1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    return-void
.end method
