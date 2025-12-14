.class public final Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J/\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ/\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1",
        "Landroid/text/TextWatcher;",
        "",
        "s",
        "",
        "start",
        "before",
        "count",
        "Ldb/r;",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "after",
        "beforeTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    const-string v0, "s"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->getSettingSearchFragment()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mImgViewClear"

    const-string v3, "mFakeHintText"

    const/16 v4, 0x8

    const-string v5, "mMicBtn"

    const-string v6, "mSearchEditTextData"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$setKeyBoardInputModeToAdjustResize(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMFakeHintText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1, v8}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$setMSearchText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getSettingSearchData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->processSearchData(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchEditTextData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_6

    const v1, 0x7f0b0b22

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$isVoiceSearchAvailable(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMMicBtn$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMMicBtn$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchEditTextData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f0b0b28

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto :goto_0

    :cond_0
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchEditTextData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMImgViewClear$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->hideFallBackText()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->showSearchKeywordListView()V

    goto/16 :goto_2

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_5
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_6
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_7
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMMicBtn$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMMicBtn$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMFakeHintText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMImgViewClear$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchEditTextData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_e

    const v2, 0x7f0b0b10

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$setMSearchText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getSettingSearchData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getMSearchText$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->processSearchData(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getSettingSearchData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->mSettingResultList:Ljava/util/ArrayList;

    const-string v1, "mSettingResultList"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase$mTextWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->access$getSettingSearchData$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->isFallBackQuery()Z

    move-result p0

    if-eqz p0, :cond_9

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->showFallBackText()V

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->hideFallBackText()V

    :cond_a
    :goto_1
    if-eqz v0, :cond_b

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->settingSearchKeywordVisibility(I)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->settingSearchListParentVisibility(I)V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->updatelist()V

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_f
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_10
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_11
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_12
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "s"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "s"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
