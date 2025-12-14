.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->f(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->e(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const-string p0, "590"

    const-string p1, "5901"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
