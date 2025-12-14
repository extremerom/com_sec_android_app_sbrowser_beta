.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->j(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->clearDisplayList()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->p(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->h(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->isVoiceSearchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v2, 0x7f0b02ac

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f0b09d2

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->i(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->n(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->h(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->i(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0b0b67

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->o(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->g(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
