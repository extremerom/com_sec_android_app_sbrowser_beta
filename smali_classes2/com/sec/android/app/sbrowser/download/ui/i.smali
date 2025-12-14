.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->h(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->b(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->a(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
