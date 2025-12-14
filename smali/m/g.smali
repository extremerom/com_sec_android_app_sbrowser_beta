.class public final Lm/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic b:Lm/j;

.field public final synthetic c:Lm/h;


# direct methods
.method public constructor <init>(Lm/h;Landroidx/appcompat/app/AlertController$RecycleListView;Lm/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/g;->c:Lm/h;

    iput-object p2, p0, Lm/g;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Lm/g;->b:Lm/j;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lm/g;->c:Lm/h;

    iget-object p2, p1, Lm/h;->v:[Z

    iget-object p4, p0, Lm/g;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Lm/h;->z:Lw2/h;

    iget-object p0, p0, Lm/g;->b:Lm/j;

    iget-object p0, p0, Lm/j;->b:Lm/l;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p2

    invoke-virtual {p1, p0, p3, p2}, Lw2/h;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
