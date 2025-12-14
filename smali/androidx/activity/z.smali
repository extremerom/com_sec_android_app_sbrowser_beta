.class public final Landroidx/activity/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/c;


# instance fields
.field public final a:Landroidx/activity/u;

.field public final synthetic b:Landroidx/activity/A;


# direct methods
.method public constructor <init>(Landroidx/activity/A;Landroidx/activity/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/z;->b:Landroidx/activity/A;

    iput-object p2, p0, Landroidx/activity/z;->a:Landroidx/activity/u;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/z;->b:Landroidx/activity/A;

    iget-object v1, v0, Landroidx/activity/A;->b:Lfb/k;

    iget-object v2, p0, Landroidx/activity/z;->a:Landroidx/activity/u;

    invoke-virtual {v1, v2}, Lfb/k;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/A;->c:Landroidx/activity/u;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroidx/activity/u;->handleOnBackCancelled()V

    iput-object v3, v0, Landroidx/activity/A;->c:Landroidx/activity/u;

    :cond_0
    invoke-virtual {v2, p0}, Landroidx/activity/u;->removeCancellable(Landroidx/activity/c;)V

    invoke-virtual {v2}, Landroidx/activity/u;->getEnabledChangedCallback$activity_release()Lsb/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/activity/u;->setEnabledChangedCallback$activity_release(Lsb/a;)V

    return-void
.end method
