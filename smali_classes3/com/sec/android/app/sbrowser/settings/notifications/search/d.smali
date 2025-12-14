.class public final synthetic Lcom/sec/android/app/sbrowser/settings/notifications/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroid/widget/EditText;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->b:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->b:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->c:Landroid/widget/EditText;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroid/widget/EditText;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->b:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/d;->c:Landroid/widget/EditText;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroid/widget/EditText;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
