.class public final synthetic LY2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/c;


# instance fields
.field public final synthetic a:LY2/c0;


# direct methods
.method public synthetic constructor <init>(LY2/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/b0;->a:LY2/c0;

    return-void
.end method


# virtual methods
.method public final a(Lr1/e;ZFF)V
    .locals 6

    iget-object p0, p0, LY2/b0;->a:LY2/c0;

    if-nez p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    sget-object p2, LY2/e0;->P:LA9/b;

    iget-object p3, p0, LY2/c0;->g:LY2/f0;

    const/4 p4, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p3}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v0

    move-object p1, p3

    check-cast p1, LY2/n0;

    invoke-virtual {p1, p4}, LY2/n0;->getTransitionAt(I)LY2/f0;

    move-result-object p1

    invoke-static {p1}, LY2/f0;->access$000(LY2/f0;)LY2/f0;

    move-result-object p4

    const/4 v2, 0x0

    invoke-static {p1, v2}, LY2/f0;->access$002(LY2/f0;LY2/f0;)LY2/f0;

    iget-wide v2, p0, LY2/c0;->a:J

    const-wide/16 v4, -0x1

    invoke-virtual {p3, v4, v5, v2, v3}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    invoke-virtual {p3, v0, v1, v4, v5}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    iput-wide v0, p0, LY2/c0;->a:J

    iget-object p0, p0, LY2/c0;->f:Landroidx/fragment/app/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/j;->run()V

    :cond_0
    iget-object p0, p3, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p4, :cond_3

    const/4 p0, 0x1

    invoke-virtual {p4, p2, p0}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p2, p4}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return-void
.end method
