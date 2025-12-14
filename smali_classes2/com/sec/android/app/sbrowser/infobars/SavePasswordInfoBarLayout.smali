.class public Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;,
        Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$EasySigninCheckedChangedListener;,
        Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDefaultSharedPreference:Landroid/content/SharedPreferences;

.field private mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

.field private mDialogType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

.field private mIs3pEnabled:Z

.field private mIsBlocklistSupported:Z

.field private mIsCheckedByUser:Ljava/lang/Boolean;

.field private mIsEasySigninActivated:Z

.field private mIsEasySigninMRTarget:Z

.field private mIsEasySigninPackageEnabled:Z

.field private mIsEasySigninSupported:Z

.field private mIsFPWebLoginEnabled:Z

.field private mIsIntelligentWebLoginEnabled:Z

.field private mIsIrisSupported:Z

.field private mIsIrisWebLoginEnabled:Z

.field private mIsPersonalDataSyncSet:Z

.field private mIsPersonalDataSyncSupported:Z

.field private mIsRegisteredFace:Z

.field private mIsRegisteredFingerprint:Z

.field private mIsRegisteredIris:Z

.field private mIsReplaceSecBrandAsGalaxy:Z

.field private mIsWebSignIn:Z

.field private mNeverButton:Landroid/widget/Button;

.field private mRememberButton:Landroid/widget/Button;

.field private mShouldCompleteSignupToSamsungPass:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "2122"

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsCheckedByUser:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$updateLayout$1()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$showSamsungPassMoveCredentialDialog$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$startDismissalCount$0()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$showSamsungPassMoveCredentialDialog$3(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$updateStates$5()V

    return-void
.end method

.method private enableWebSigninInSBrowserSettings()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateWebLoginStatus()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFingerprint:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string p0, "pref_use_fingerprint_web_signin_in_sbrowser"

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredIris:Z

    if-eqz p0, :cond_2

    const-string p0, "pref_use_iris_web_signin_in_sbrowser"

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private enableWebSigninSettings()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateWebLoginStatus()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFingerprint:Z

    const-string v1, "com.android.settings"

    const-string v2, "SavePasswordInfoBarLayout"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_WEB_SIGNIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Send broadcast com.samsung.android.intent.action.FINGERPRINT_WEB_SIGNIN"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredIris:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFace:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.intent.action.INTELLIGENT_SCAN_WEB_SIGNIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Send broadcast com.samsung.android.intent.action.INTELLIGENT_SCAN_WEB_SIGNIN"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.IRIS_WEB_SIGNIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "Send broadcast com.samsung.android.intent.action.IRIS_WEB_SIGNIN"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->lambda$updateStates$4()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsBlocklistSupported:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    return p0
.end method

.method private increaseSamsungPassRejectCount()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "samsung_pass_reject_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isSamsungPassRejectedInMRTarget()Z
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v0, "samsung_pass_reject_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "User rejected SamsungPass "

    const-string v2, "times"

    const-string v3, "SavePasswordInfoBarLayout"

    invoke-static {p0, v0, v2, v3}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninMRTarget:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mNeverButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mShouldCompleteSignupToSamsungPass:Z

    return p0
.end method

.method private static synthetic lambda$showSamsungPassMoveCredentialDialog$2()V
    .locals 2

    const-string v0, "0030"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private synthetic lambda$showSamsungPassMoveCredentialDialog$3(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    new-instance p3, LN4/a;

    const/4 v0, 0x5

    invoke-direct {p3, v0}, LN4/a;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->migrateAllData(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V

    const/4 p0, 0x0

    invoke-static {p4, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;->refreshTabs(ZZ)V

    return-void
.end method

.method private synthetic lambda$startDismissalCount$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateLayout$1()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateStates()V

    return-void
.end method

.method private synthetic lambda$updateStates$4()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isEasySigninMRTarget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninMRTarget:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private synthetic lambda$updateStates$5()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateLayoutInternal()V

    return-void
.end method

.method private launchSamsungPassSignup()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->recordLaunchSamsungPassSignup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.samsungpass.ACTION_SIGNUP"

    const-string v3, "package:com.android.browser.application_id"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot sign up to SamsungPass: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SavePasswordInfoBarLayout"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsCheckedByUser:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->increaseSamsungPassRejectCount()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->launchSamsungPassSignup()V

    return-void
.end method

.method private onNeverButtonClicked()V
    .locals 2

    const-string v0, "SavePasswordInfoBarLayout"

    const-string v1, "onNeverButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsBlocklistSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onSecondaryButtonClicked()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordSavePasswordNeverClicked(Ljava/lang/String;Z)V

    return-void
.end method

.method private onNotNowButtonClicked()V
    .locals 2

    const-string v0, "SavePasswordInfoBarLayout"

    const-string v1, "onNotNowButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordSavePasswordNotNowClicked(Ljava/lang/String;)V

    return-void
.end method

.method private onRememberButtonClicked()V
    .locals 5

    const-string v0, "SavePasswordInfoBarLayout"

    const-string v1, "onRememberButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninSupported:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->enableWebSigninSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninMRTarget:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->enableWebSigninInSBrowserSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "move_to_samsung_pass_dialog_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->showSamsungPassMoveCredentialDialog()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->setPasswordAutofillType(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onPrimaryButtonClicked()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordSavePasswordRememberClicked(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "used_weblogin_at_least_once"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninSupported:Z

    if-nez v1, :cond_5

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const-string v1, "pref_web_signin_checked"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private recordLaunchSamsungPassSignup()V
    .locals 0

    const-string p0, "9141"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    return-void
.end method

.method private recordSavePasswordInfoBarLaunched()V
    .locals 2

    const-string v0, "201"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    const-string v0, "2123"

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    :cond_0
    return-void
.end method

.method private setCheckboxForEasySignin()V
    .locals 2

    const-string v0, "SavePasswordInfoBarLayout"

    const-string v1, "setCheckboxForEasySignin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsReplaceSecBrandAsGalaxy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f140f7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f140f82

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$EasySigninCheckedChangedListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$EasySigninCheckedChangedListener;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateEasySigninCheckbox()V

    return-void
.end method

.method private setCheckboxForWebLogin()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredIris:Z

    const-string v1, "SavePasswordInfoBarLayout"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFingerprint:Z

    if-nez v0, :cond_0

    const-string v0, "No registered fingerprint or iris"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2122"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "setCheckboxForWebLogin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateWebLoginStatus()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIrisSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f140f7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f14060e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const-string v0, "2124"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsCheckedByUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "pref_web_signin_checked"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method private showSamsungPassMoveCredentialDialog()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;-><init>()V

    new-instance v2, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f1501c5

    invoke-direct {v2, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f140dba

    invoke-virtual {v2, v3}, Lm/k;->e(I)V

    const v3, 0x7f140168

    invoke-virtual {v2, v3}, Lm/k;->a(I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/global_config/d;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/sec/android/app/sbrowser/global_config/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f140dcd

    invoke-virtual {v2, v0, v3}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    const v1, 0x7f1402ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "move_to_samsung_pass_dialog_shown"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateEasySigninCheckbox()V
    .locals 6

    const-string v0, "updateEasySigninCheckbox"

    const-string v1, "SavePasswordInfoBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFingerprint:Z

    const-string v2, "2122"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredIris:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIs3pEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "No registered fingerprint or iris, and 3p is disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSupported:Z

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninPackageEnabled:Z

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    const-string v5, "2123"

    if-eqz v0, :cond_5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsCheckedByUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "pref_web_signin_checked"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mShouldCompleteSignupToSamsungPass:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "SamsungPass is disabled: Don\'t show checkbox"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDialogType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method private updateLayoutInternal()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninMRTarget:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    if-nez v0, :cond_1

    const-string v0, "[EasySigninMRTarget] SamsungPass is inactive"

    const-string v1, "SavePasswordInfoBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mShouldCompleteSignupToSamsungPass:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->isSamsungPassRejectedInMRTarget()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[EasySigninMRTarget] Need join to SamsungPass"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setCheckboxForEasySignin()V

    goto :goto_0

    :cond_0
    const-string v0, "[EasySigninMRTarget] WebLogin in MR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setCheckboxForWebLogin()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setCheckboxForEasySignin()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setCheckboxForWebLogin()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mRememberButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->recordSavePasswordInfoBarLaunched()V

    return-void
.end method

.method private updateStates()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isFingerprintRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFingerprint:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isIrisRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredIris:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isFaceRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsRegisteredFace:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isFPWebLoginEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsFPWebLoginEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isIrisWebLoginEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIrisWebLoginEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isIntelligentWebLoginEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIntelligentWebLoginEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isEasySigninSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninSupported:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isBlocklistSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsBlocklistSupported:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isPersonalDataSyncSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSupported:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isPersonalDataSyncSet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->is3pEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIs3pEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isEasySigninPackageEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninPackageEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->shouldCompleteSignupToSamsungPass()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mShouldCompleteSignupToSamsungPass:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isEasySigninActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsPersonalDataSyncSet:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/infobars/f;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsReplaceSecBrandAsGalaxy:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;->isIrisSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIrisSupported:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/infobars/f;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateWebLoginStatus()V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninMRTarget:Z

    const-string v1, "SavePasswordInfoBarLayout"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsEasySigninActivated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "pref_use_fingerprint_web_signin_in_sbrowser"

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsFPWebLoginEnabled:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDefaultSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_use_iris_web_signin_in_sbrowser"

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIrisWebLoginEnabled:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v0, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateWebLoginStatus from SBrowser settings "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsFPWebLoginEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIrisWebLoginEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsIntelligentWebLoginEnabled:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateWebLoginStatus from global settings "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mIsWebSignIn:Z

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01f0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b01f3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b01f6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->onRememberButtonClicked()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->onNeverButtonClicked()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->onNotNowButtonClicked()V

    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateLayout()V

    return-void
.end method

.method public setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const p1, 0x7f0b01f3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mNeverButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01f0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01f6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mRememberButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b00f4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mCheckbox:Landroid/widget/CheckBox;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public startDismissalCount()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/infobars/f;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;I)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopDismissalCount()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/infobars/f;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
