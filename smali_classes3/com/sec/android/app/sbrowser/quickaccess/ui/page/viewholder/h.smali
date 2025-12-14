.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;IIIILandroid/view/View;I)V
    .locals 0

    iput p7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->b:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->c:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->d:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->e:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->f:I

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->g:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->g:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->d:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->e:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->b:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->c:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->f:I

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->d(Landroid/view/View;IIIILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->g:Landroid/view/View;

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->d:I

    iget v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->e:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->b:Landroid/view/View;

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->c:I

    iget v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;->f:I

    invoke-static/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->c(Landroid/view/View;IIIILandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
