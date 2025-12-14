.class public final Landroidx/activity/result/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/activity/result/a;

.field public final b:Lh/a;


# direct methods
.method public constructor <init>(Lh/a;Landroidx/activity/result/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/result/d;->a:Landroidx/activity/result/a;

    iput-object p1, p0, Landroidx/activity/result/d;->b:Lh/a;

    return-void
.end method
