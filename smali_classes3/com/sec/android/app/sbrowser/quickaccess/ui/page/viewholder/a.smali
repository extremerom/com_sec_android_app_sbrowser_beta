.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->b(Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
