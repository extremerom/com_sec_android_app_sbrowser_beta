.class public final synthetic LK6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/a;->a:I

    iput-object p2, p0, LK6/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, LK6/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;->a(Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;->a(Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;Landroid/view/View;)V

    return-void

    :pswitch_7
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;->a(Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;Landroid/view/View;)V

    return-void

    :pswitch_8
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->b(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Landroid/view/View;)V

    return-void

    :pswitch_9
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;->a(Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;Landroid/view/View;)V

    return-void

    :pswitch_a
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;->a(Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;Landroid/view/View;)V

    return-void

    :pswitch_b
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->a(Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;Landroid/view/View;)V

    return-void

    :pswitch_c
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->a(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;Landroid/view/View;)V

    return-void

    :pswitch_d
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->a(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Landroid/view/View;)V

    return-void

    :pswitch_e
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->a(Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;Landroid/view/View;)V

    return-void

    :pswitch_f
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->e(Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;Landroid/view/View;)V

    return-void

    :pswitch_10
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;->a(Lcom/sec/android/app/sbrowser/omnibox/CopyButton;Landroid/view/View;)V

    return-void

    :pswitch_11
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->a(Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;Landroid/view/View;)V

    return-void

    :pswitch_12
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->c(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;Landroid/view/View;)V

    return-void

    :pswitch_13
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->c(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/view/View;)V

    return-void

    :pswitch_14
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void

    :pswitch_15
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->b(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;Landroid/view/View;)V

    return-void

    :pswitch_16
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->a(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;Landroid/view/View;)V

    return-void

    :pswitch_18
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/PopupMenuHelper;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/PopupMenuHelper;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/PopupMenuHelper;Landroid/view/View;)V

    return-void

    :pswitch_19
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->i()V

    const/4 p0, 0x0

    throw p0

    :pswitch_1a
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, LK6/y;

    iget-object p1, p0, LK6/y;->f:Landroid/widget/EditText;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object v0, p0, LK6/y;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, LK6/y;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LK6/y;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz p1, :cond_2

    iget-object v0, p0, LK6/y;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    invoke-virtual {p0}, LK6/r;->q()V

    :goto_1
    return-void

    :pswitch_1b
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, LK6/m;

    invoke-virtual {p0}, LK6/m;->u()V

    return-void

    :pswitch_1c
    iget-object p0, p0, LK6/a;->b:Ljava/lang/Object;

    check-cast p0, LK6/e;

    iget-object p1, p0, LK6/e;->i:Landroid/widget/EditText;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_4
    invoke-virtual {p0}, LK6/r;->q()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
