.class public final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0002\u0002\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/activity/ImmLeaksCleaner;",
        "Landroidx/lifecycle/H;",
        "androidx/activity/t",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/activity/s;->a:Landroidx/activity/s;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
