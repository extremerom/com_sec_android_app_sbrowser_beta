.class public final LJ0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/x;


# instance fields
.field public final synthetic a:LJ0/q;

.field public final synthetic b:Landroidx/compose/ui/node/a;


# direct methods
.method public constructor <init>(LJ0/q;Landroidx/compose/ui/node/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/d;->a:LJ0/q;

    iput-object p2, p0, LJ0/d;->b:Landroidx/compose/ui/node/a;

    return-void
.end method


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 4

    iget-object p2, p0, LJ0/d;->a:LJ0/q;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v1, Lfb/w;->a:Lfb/w;

    if-nez v0, :cond_0

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result p0

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result p2

    sget-object p3, LJ0/c;->b:LJ0/c;

    invoke-virtual {p1, p0, p2, v1, p3}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_1
    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v0

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v2

    invoke-virtual {p2}, LJ0/i;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, v2, v3}, LJ0/i;->e(LJ0/q;III)I

    move-result v0

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v2

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p3

    invoke-virtual {p2}, LJ0/i;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, p3, p4}, LJ0/i;->e(LJ0/q;III)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    new-instance v0, LJ0/a;

    iget-object p0, p0, LJ0/d;->b:Landroidx/compose/ui/node/a;

    const/4 v2, 0x1

    invoke-direct {v0, p2, p0, v2}, LJ0/a;-><init>(LJ0/q;Landroidx/compose/ui/node/a;I)V

    invoke-virtual {p1, p3, p4, v1, v0}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method
