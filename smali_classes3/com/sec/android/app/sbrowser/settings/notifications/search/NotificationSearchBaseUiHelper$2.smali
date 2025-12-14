.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->onOffsetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

.field final synthetic val$noItemView:Landroid/view/View;

.field final synthetic val$noItemViewParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;->val$noItemView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;->val$noItemViewParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;->val$noItemView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper$2;->val$noItemViewParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
