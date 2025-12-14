.class public final Landroidx/lifecycle/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final a:Landroidx/lifecycle/S;

.field public final b:Landroidx/lifecycle/Y;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/V;->c:I

    iput-object p1, p0, Landroidx/lifecycle/V;->a:Landroidx/lifecycle/S;

    iput-object p2, p0, Landroidx/lifecycle/V;->b:Landroidx/lifecycle/Y;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/V;->c:I

    iget-object v1, p0, Landroidx/lifecycle/V;->a:Landroidx/lifecycle/S;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getVersion()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getVersion()I

    move-result v0

    iput v0, p0, Landroidx/lifecycle/V;->c:I

    iget-object p0, p0, Landroidx/lifecycle/V;->b:Landroidx/lifecycle/Y;

    invoke-interface {p0, p1}, Landroidx/lifecycle/Y;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
