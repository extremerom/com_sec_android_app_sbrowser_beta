.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->requestFocusAndSetSelection(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p3
.end method
