.class public final Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/c0;


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/f0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/f0;

    iput p2, p0, Landroidx/fragment/app/d0;->a:I

    iput p3, p0, Landroidx/fragment/app/d0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/f0;

    iget-object v1, v0, Landroidx/fragment/app/f0;->A:Landroidx/fragment/app/Fragment;

    iget v2, p0, Landroidx/fragment/app/d0;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/f0;->U(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget p0, p0, Landroidx/fragment/app/d0;->b:I

    invoke-virtual {v0, v2, p1, p0, p2}, Landroidx/fragment/app/f0;->V(ILjava/util/ArrayList;ILjava/util/ArrayList;)Z

    move-result p0

    return p0
.end method
