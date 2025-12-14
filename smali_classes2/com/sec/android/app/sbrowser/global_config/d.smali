.class public final synthetic Lcom/sec/android/app/sbrowser/global_config/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/global_config/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/J;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->i(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;Landroidx/fragment/app/J;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;->i(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->b(Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->d(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/d;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->m(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroid/widget/EditText;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
