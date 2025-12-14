.class public final synthetic Lcom/sec/android/app/sbrowser/auth/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/f;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/TerraceActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm$OnDeletionConfirm_Response;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/autocomplete/AutofillDeletionConfirm;->a(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm$OnDeletionConfirm_Response;Lcom/sec/terrace/TerraceActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->h(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->o(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->g(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->j(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->b(Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->a(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->a(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/f;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->l(Lcom/sec/android/app/sbrowser/auth/AuthFragment;Landroid/os/Bundle;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
