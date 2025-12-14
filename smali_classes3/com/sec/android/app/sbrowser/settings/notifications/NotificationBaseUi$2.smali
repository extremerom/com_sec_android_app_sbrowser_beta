.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->mIsShowingActionMode:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v8

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->appBarOnOffsetChanged(ZLandroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;ILandroid/view/ViewGroup;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    return-void
.end method
