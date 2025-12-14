.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/view/grid/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;->b:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;->b:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->d(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
