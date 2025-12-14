.class public final Landroidx/activity/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Landroidx/activity/v;

.field public final synthetic b:Landroidx/activity/v;

.field public final synthetic c:Landroidx/activity/w;

.field public final synthetic d:Landroidx/activity/w;


# direct methods
.method public constructor <init>(Landroidx/activity/v;Landroidx/activity/v;Landroidx/activity/w;Landroidx/activity/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/y;->a:Landroidx/activity/v;

    iput-object p2, p0, Landroidx/activity/y;->b:Landroidx/activity/v;

    iput-object p3, p0, Landroidx/activity/y;->c:Landroidx/activity/w;

    iput-object p4, p0, Landroidx/activity/y;->d:Landroidx/activity/w;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/y;->d:Landroidx/activity/w;

    invoke-virtual {p0}, Landroidx/activity/w;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/y;->c:Landroidx/activity/w;

    invoke-virtual {p0}, Landroidx/activity/w;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/y;->b:Landroidx/activity/v;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/v;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/y;->a:Landroidx/activity/v;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/v;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
