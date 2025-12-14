.class public final synthetic Lcom/sec/android/app/sbrowser/media/assistant/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->b(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->h(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->b(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
