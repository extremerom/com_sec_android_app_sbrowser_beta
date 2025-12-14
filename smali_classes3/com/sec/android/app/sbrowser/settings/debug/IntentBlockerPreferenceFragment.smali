.class public Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mInsertionStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->lambda$insertTestData$3()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private insertTestData(Landroidx/preference/Preference;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    :cond_0
    const v0, 0x7f140632

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/e;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->lambda$insertTestData$1()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->lambda$insertTestData$2()V

    return-void
.end method

.method private synthetic lambda$insertTestData$1()V
    .locals 2

    const-string v0, "intent_blocker_debug_insert_data"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f140631

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string v0, "Stopped"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->showSnackBar(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$insertTestData$2()V
    .locals 2

    const-string v0, "intent_blocker_debug_insert_data"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f140631

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    return-void
.end method

.method private synthetic lambda$insertTestData$3()V
    .locals 9

    const-string v5, "com.samsung.android.app.contacts"

    const-string v6, "com.sec.android.app.clockpackage"

    const-string v0, "com.sec.android.gallery3d"

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.samsung.android.spay"

    const-string v3, "com.samsung.android.calendar"

    const-string v4, "com.sec.phone"

    const-string v7, "com.android.settings"

    const-string v8, "com.samsung.android.app.notes"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v4, "https://youtube.com"

    const-string v5, "https://cnn.com"

    const-string v1, "https://naver.com"

    const-string v2, "https://google.com"

    const-string v3, "https://daum.net"

    const-string v6, "https://amazon.com"

    const-string v7, "https://facebook.com"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2710

    if-gt v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    if-nez v4, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/e;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    rem-int/lit8 v4, v3, 0x9

    rem-int/lit8 v5, v3, 0x7

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v6

    aget-object v4, v0, v4

    aget-object v5, v1, v5

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getIntentDTO(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    neg-int v6, v3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->insertHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;J)Z

    :cond_1
    if-eqz v3, :cond_3

    rem-int/lit8 v4, v3, 0x64

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_2
    const-string v4, "Inserting:("

    const-string v5, "/10000)"

    invoke-static {v3, v4, v5}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->showSnackBar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "Done: 10000"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->showSnackBar(Ljava/lang/String;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/e;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->mInsertionStarted:Z

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->insertTestData(Landroidx/preference/Preference;)V

    return v1
.end method

.method private showSnackBar(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140633

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18003d

    invoke-virtual {p0, p1, p2}, Lw2/A;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "intent_blocker_debug_insert_data"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/a;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/a;-><init>(Lw2/A;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    return-void
.end method
