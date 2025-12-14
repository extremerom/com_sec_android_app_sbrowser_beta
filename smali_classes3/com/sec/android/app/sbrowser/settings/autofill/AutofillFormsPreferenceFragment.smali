.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

.field mAutofillFormsStorageCatagory:Landroidx/preference/PreferenceCategory;

.field mAutofillFormsStoragePreference:Landroidx/preference/Preference;

.field mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

.field mIsAnyPasswordInNative:Z

.field mIsSyncAvailable:Z

.field private mMoveToSPassDialog:Lm/l;

.field mMoveToSpassBtn:Landroid/widget/Button;

.field mNameAndPasswordMigrator:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

.field private final mOpenCardListBehavior:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

.field private final mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

.field mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

.field mSamsungPassMigrator:Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

.field mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

.field mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mSamsungPassMigrator:Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mNameAndPasswordMigrator:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/e;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mOpenCardListBehavior:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    return-void
.end method

.method private createPreferences()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lr/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    const-string v3, "usernames_and_passwords"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    const v3, 0x7f140a31

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v2, Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-direct {v2, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const-string v3, "autofill_profile"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const v3, 0x7f140179

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/features/PaymentFeatureFactory;->isWebPaymentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isCardsPreferenceVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-direct {v2, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const-string v3, "autofill_creditcard"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const v3, 0x7f14093d

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/features/PaymentFeatureFactory;->isWebPaymentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LJ8/d;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v4, v0, v1}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const v0, 0x7f14093f

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0, v1}, Lw2/A;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getSbarMsgResIdBySupportBioTypeForDex()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const p0, 0x7f140eba

    goto :goto_0

    :cond_0
    const p0, 0x7f140eb9

    :goto_0
    return p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const p0, 0x7f140bda

    goto :goto_1

    :cond_2
    const p0, 0x7f140bd9

    :goto_1
    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    const p0, 0x7f140bd8

    goto :goto_2

    :cond_4
    const p0, 0x7f140bd7

    :goto_2
    return p0

    :cond_5
    if-eqz v0, :cond_6

    const p0, 0x7f140bd4

    goto :goto_3

    :cond_6
    const p0, 0x7f140bd3

    :goto_3
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$onPreferenceTreeClick$6(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$makeTurnOnSamsungPassSyncDialog$7()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$createPreferences$4()V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$createPreferences$3()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Lr/d;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$createPreferences$5(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private synthetic lambda$createPreferences$2(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 2

    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStorageCatagory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStorageCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    const p1, 0x7f1401ba

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    const-string v0, "autofill_forms_storage_option"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private static synthetic lambda$createPreferences$3()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private synthetic lambda$createPreferences$4()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updatePreferencesTitleAndDescription()V

    return-void
.end method

.method private synthetic lambda$createPreferences$5(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsSyncAvailable:Z

    if-eqz v0, :cond_0

    new-instance v0, LJ8/d;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    new-instance p1, LN4/a;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, LN4/a;-><init>(I)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/autofill/f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/f;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;I)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$makeTurnOnSamsungPassSyncDialog$7()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsAnyPasswordInNative:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updatePreferencesTitleAndDescription()V

    const-string p0, "0030"

    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private synthetic lambda$makeTurnOnSamsungPassSyncDialog$8(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mSamsungPassMigrator:Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/f;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/f;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mNameAndPasswordMigrator:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->migrateAllData(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->launchCreditCardSettings(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->makeTurnOnSamsungPassSyncDialog()V

    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$6(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$createPreferences$2(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private makeTurnOnSamsungPassSyncDialog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSPassDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1401a1

    goto :goto_0

    :cond_1
    const v1, 0x7f1401a0

    :goto_0
    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f14019f

    goto :goto_1

    :cond_2
    const v1, 0x7f14019e

    :goto_1
    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/g;-><init>(Lw2/A;I)V

    const v2, 0x7f1402ad

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    const v1, 0x7f1402ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSPassDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSPassDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$new$0(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->lambda$makeTurnOnSamsungPassSyncDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private showMoveToSPassButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSpassBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showSamsungPassSyncSummaryView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsSyncAvailable:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f14019c

    goto :goto_0

    :cond_1
    const v1, 0x7f14019b

    :goto_0
    const-string v2, "\n\n"

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mSummaryPreference:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "si__AutofillFormsPreferenceFragment"

    const-string v0, "[showSamsungPassSyncSummaryView] Fragment is not attached to activity"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAutofillPreferenceCard()V
    .locals 12

    const-string v0, "Autofill setting is"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v2

    const-string v3, "autofill_creditcard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isAutofillRestrictionUsed()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->NOTICE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->AUDIT_LOG_GROUP_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    xor-int/lit8 v8, v1, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "setAutoFillSetting"

    if-eqz v2, :cond_2

    const-string p0, " enabled"

    goto :goto_0

    :cond_2
    const-string p0, " disabled"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->auditLogPolicySendAuditLog(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateAutofillPreferenceProfile()V
    .locals 12

    const-string v0, "Autofill setting is"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v2

    const-string v3, "autofill_profile"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isAutofillRestrictionUsed()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->NOTICE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->AUDIT_LOG_GROUP_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    xor-int/lit8 v8, v1, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "setAutoFillSetting"

    if-eqz v2, :cond_2

    const-string p0, " enabled"

    goto :goto_0

    :cond_2
    const-string p0, " disabled"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->auditLogPolicySendAuditLog(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updatePreferencesTitleAndDescription()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->showSamsungPassSyncSummaryView()V

    const v1, 0x7f06020f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v3, :cond_4

    const v4, 0x7f14093c

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f140183

    goto :goto_0

    :cond_1
    const v5, 0x7f140184

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mUsernamesAndPasswordsPreference:Landroidx/preference/Preference;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mProfilePreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSpassBtn:Landroid/widget/Button;

    if-eqz v3, :cond_6

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_7

    const v5, 0x7f1407c8

    goto :goto_2

    :cond_7
    const v5, 0x7f1400cf

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v4, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAutofillFormsStoragePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsAnyPasswordInNative:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->showMoveToSPassButton()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "503"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5016"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->createPreferences()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->addObserver(Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->updatePasswordLists()V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x102000a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_0
    const p3, 0x7f0e04de

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b0787

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSpassBtn:Landroid/widget/Button;

    const p3, 0x7f14019d

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSpassBtn:Landroid/widget/Button;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/autofill/j;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/j;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mMoveToSpassBtn:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->G()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lm/n;

    invoke-virtual {v1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {v1}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object v1

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    const-string v0, "autofill_profile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "autofill_creditcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updateAutofillPreferenceProfile()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillProfileEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updateAutofillPreferenceCard()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillCreditCardEnabled(Z)V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 p1, 0x0

    :goto_1
    long-to-int v0, p1

    const-string v1, "5007"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "autofill_creditcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5019"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsSyncAvailable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->launchCreditCardSettings(Landroid/app/Activity;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isCreditCardAuthenticationDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->launchCreditCardSettings(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->setActivity(Landroid/app/Activity;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mOpenCardListBehavior:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mCardPreference:Landroidx/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getSbarMsgResIdBySupportBioTypeForDex()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p1, p0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/e;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;)V

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    :goto_0
    return v0

    :cond_5
    const-string v0, "autofill_profile"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5018"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->launchProfileSettings(Landroid/app/Activity;)V

    goto :goto_1

    :cond_6
    const-string v0, "usernames_and_passwords"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsAnyPasswordInNative:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->launchUsernameAndPasswordSettings(Landroid/app/Activity;)V

    goto :goto_1

    :cond_8
    const-string v0, "autofill_forms_storage_option"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0030"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    :goto_1
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updateAutofillPreferenceProfile()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updateAutofillPreferenceCard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->updatePreferencesTitleAndDescription()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const v0, 0x7f14093f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public passwordExceptionListAvailable(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsAnyPasswordInNative:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->showMoveToSPassButton()V

    :cond_0
    return-void
.end method

.method public passwordListAvailable(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->mIsAnyPasswordInNative:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->showMoveToSPassButton()V

    :cond_0
    return-void
.end method
