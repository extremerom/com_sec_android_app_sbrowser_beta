.class public final Ls/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/t;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ls/i;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Ls/s;

.field public f:Ls/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/e;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ls/e;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Ls/i;Z)V
    .locals 0

    iget-object p0, p0, Ls/e;->e:Ls/s;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ls/s;->a(Ls/i;Z)V

    :cond_0
    return-void
.end method

.method public final b(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ls/z;)Z
    .locals 5

    invoke-virtual {p1}, Ls/i;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ls/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Ls/j;->a:Ls/z;

    new-instance v1, Lm/k;

    iget-object v2, p1, Ls/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lm/k;-><init>(Landroid/content/Context;)V

    new-instance v3, Ls/e;

    invoke-virtual {v1}, Lm/k;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ls/e;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Ls/j;->c:Ls/e;

    iput-object v0, v3, Ls/e;->e:Ls/s;

    invoke-virtual {p1, v3, v2}, Ls/i;->b(Ls/t;Landroid/content/Context;)V

    iget-object v2, v0, Ls/j;->c:Ls/e;

    iget-object v3, v2, Ls/e;->f:Ls/d;

    if-nez v3, :cond_1

    new-instance v3, Ls/d;

    invoke-direct {v3, v2}, Ls/d;-><init>(Ls/e;)V

    iput-object v3, v2, Ls/e;->f:Ls/d;

    :cond_1
    iget-object v2, v2, Ls/e;->f:Ls/d;

    iget-object v3, v1, Lm/k;->a:Lm/h;

    iput-object v2, v3, Lm/h;->r:Landroid/widget/ListAdapter;

    iput-object v0, v3, Lm/h;->s:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Ls/i;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v3, Lm/h;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ls/i;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lm/h;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Ls/i;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    :goto_0
    iput-object v0, v3, Lm/h;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object v1

    iput-object v1, v0, Ls/j;->b:Lm/l;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Ls/j;->b:Lm/l;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Ls/j;->b:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Ls/e;->e:Ls/s;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Ls/s;->K(Ls/i;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Ls/e;->f:Ls/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;Ls/i;)V
    .locals 1

    iget-object v0, p0, Ls/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Ls/e;->a:Landroid/content/Context;

    iget-object v0, p0, Ls/e;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ls/e;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Ls/e;->c:Ls/i;

    iget-object p0, p0, Ls/e;->f:Ls/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ls/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final f(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Ls/e;->c:Ls/i;

    iget-object p2, p0, Ls/e;->f:Ls/d;

    invoke-virtual {p2, p3}, Ls/d;->b(I)Ls/k;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Ls/i;->q(Landroid/view/MenuItem;Ls/t;I)Z

    return-void
.end method
