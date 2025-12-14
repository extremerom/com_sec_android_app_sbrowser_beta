.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/recyclerview/widget/h1;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/h1;Landroid/view/View;III)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->e:Landroidx/recyclerview/widget/h1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->b:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->c:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->e:Landroidx/recyclerview/widget/h1;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->b:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->c:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->d:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;Landroid/view/View;IILandroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->e:Landroidx/recyclerview/widget/h1;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->b:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->c:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/ui/h;->d:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->a(Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;Landroid/view/View;IILandroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
