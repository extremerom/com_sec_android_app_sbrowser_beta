.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->E(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
