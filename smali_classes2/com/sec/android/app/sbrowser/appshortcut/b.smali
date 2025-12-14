.class public final synthetic Lcom/sec/android/app/sbrowser/appshortcut/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/appshortcut/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->a(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm$OnDeletionConfirm_Response;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/autocomplete/AutofillDeletionConfirm;->b(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm$OnDeletionConfirm_Response;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->d(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->i(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->a(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->c(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_7
    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->a(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->k(Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->o(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->b(Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_c
    check-cast p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->b(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
