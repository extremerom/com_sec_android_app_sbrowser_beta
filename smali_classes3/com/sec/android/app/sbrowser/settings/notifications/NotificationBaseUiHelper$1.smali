.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->displaySelectModeUI(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;

.field final synthetic val$mNoNotificationLayout:Landroid/widget/LinearLayout;

.field final synthetic val$mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$mNoNotificationLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$menu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;->val$mNoNotificationLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setMenuItemVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V

    return-void
.end method
