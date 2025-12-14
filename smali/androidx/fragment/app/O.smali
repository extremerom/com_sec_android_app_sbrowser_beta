.class public final Landroidx/fragment/app/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/n0;

.field public final synthetic b:Landroidx/fragment/app/P;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/P;Landroidx/fragment/app/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/O;->b:Landroidx/fragment/app/P;

    iput-object p2, p0, Landroidx/fragment/app/O;->a:Landroidx/fragment/app/n0;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/fragment/app/O;->a:Landroidx/fragment/app/n0;

    invoke-virtual {p1}, Landroidx/fragment/app/n0;->k()V

    iget-object p1, p1, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/O;->b:Landroidx/fragment/app/P;

    iget-object p0, p0, Landroidx/fragment/app/P;->a:Landroidx/fragment/app/f0;

    invoke-static {p1, p0}, Landroidx/fragment/app/o;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/f0;)Landroidx/fragment/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/o;->m()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
