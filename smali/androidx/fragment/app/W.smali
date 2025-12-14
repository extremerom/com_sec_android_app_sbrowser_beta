.class public final Landroidx/fragment/app/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/p;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/f0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/f0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/f0;->q(Landroid/view/Menu;)V

    return-void
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/f0;->k(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/f0;->p(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/f0;->t(Landroid/view/Menu;)Z

    return-void
.end method
