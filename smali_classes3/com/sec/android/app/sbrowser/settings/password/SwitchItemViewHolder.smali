.class public Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;
    }
.end annotation


# instance fields
.field private mAutoSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mAutoSignInSwitchContainer:Landroid/widget/LinearLayout;

.field private mAutoSignInTitle:Landroid/widget/TextView;

.field private mAutofillSignInContainer:Landroid/widget/LinearLayout;

.field private mBioMetricContainer:Landroid/widget/LinearLayout;

.field private mBiometricHeaderTitle:Landroid/widget/TextView;

.field private mBiometricSummary:Landroid/widget/TextView;

.field private mBiometricTitle:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

.field private mPassDescription:Landroid/widget/TextView;

.field private mSamsungPassHeaderTitle:Landroid/widget/TextView;

.field private mSamsungPassViewContainer:Landroid/widget/LinearLayout;

.field private mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

.field private mSaveSignInTitle:Landroid/widget/TextView;

.field private mSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mViewSignInInfo:Landroid/widget/LinearLayout;

.field private mViewSignInInfoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/f;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/password/g;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/password/g;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    const p2, 0x7f0b0a4f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    const p2, 0x7f0b013b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b013c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0b013d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInTitle:Landroid/widget/TextView;

    const p2, 0x7f0b010b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitchContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b010c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0b010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0142

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0143

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfoTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0a1e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassHeaderTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0a1f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassViewContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0141

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutofillSignInContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b010e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricHeaderTitle:Landroid/widget/TextView;

    const p2, 0x7f0b013f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricSummary:Landroid/widget/TextView;

    const p2, 0x7f0b013e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0140

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitchContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isSamsungPassInitializedSharedPref()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->initializeMigrationDescription(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addViews()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundForChunks()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateBiometricsViewSummary()V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 p3, 0x13

    invoke-direct {p2, p3, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/16 p3, 0x8

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$addViewsInternal$12()V

    return-void
.end method

.method private addBiometricsView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateBiometricsViewSummary()V

    return-void
.end method

.method private addSamsungPassView()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassHeaderTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1407c3

    goto :goto_0

    :cond_0
    const v2, 0x7f1407c8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassHeaderTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassHeaderTitle:Landroid/widget/TextView;

    const-string v4, ", "

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    const v4, 0x7f14058d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfoTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1407c7

    goto :goto_1

    :cond_1
    const v2, 0x7f1407cc

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private addViews()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutofillSignInContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->isSamsungPassActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addSamsungPassView()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isEasySigninMRTarget()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addBiometricsView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private addViewsAsync()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutofillSignInContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->isSamsungPassActivated()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addViewsInternal(Z)V

    return-void
.end method

.method private addViewsInternal(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordUtil;->hasSamsungPassLogin()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$5()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$0()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$initializeMigrationDescriptionInternal$10(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$7()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$addViewsInternal$13()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$8()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$9()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method private initializeMigrationDescription(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1407c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->isSamsungPassActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\n\n"

    invoke-static {p1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1407bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isEasySigninMRTarget()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, " "

    invoke-static {p1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1407c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeMigrationDescriptionAsync(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->initializeMigrationDescriptionInternal(Z)V

    return-void
.end method

.method private initializeMigrationDescriptionInternal(Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$updateSwitchState$11()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$addViewsInternal$12()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addSamsungPassView()V

    return-void
.end method

.method private synthetic lambda$addViewsInternal$13()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isEasySigninMRTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addBiometricsView()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initializeMigrationDescriptionInternal$10(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1407c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "\n\n"

    invoke-static {v0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1407bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isEasySigninMRTarget()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1407c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->LOGIN:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->launchSamsungPass(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    const-string v0, "5105"

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->sendLogs(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->startFragment()V

    goto :goto_0

    :sswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->isShowingActionMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    goto :goto_0

    :sswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->isShowingActionMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_5
        0x7f0b010c -> :sswitch_4
        0x7f0b013b -> :sswitch_3
        0x7f0b013c -> :sswitch_2
        0x7f0b013e -> :sswitch_1
        0x7f0b0142 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$new$2(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "5104"

    invoke-interface {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->sendLogs(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSaveSigninEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAutoSigninEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->initializeMigrationDescriptionAsync(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addViewsAsync()V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundForChunks()V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateBiometricsViewSummary()V

    return-void
.end method

.method private synthetic lambda$updateSwitchState$11()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->addViewsAsync()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->lambda$new$6()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private setBackgroundForChunks()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutofillSignInContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080492

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundResource(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSamsungPassViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundResource(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    const v1, 0x7f080082

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundResource(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->setBackgroundResource(Landroid/view/View;I)V

    return-void
.end method

.method private setBackgroundResource(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private updateBiometricsViewSummary()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;->callGetAutofillVerificationSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f060294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public updateState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f070133

    goto :goto_0

    :cond_0
    const v1, 0x7f070132

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mPassDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfoTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBiometricSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mViewSignInInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mBioMetricContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method public updateSwitchState()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isRememberPasswordsEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isAutoSigninEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402af

    const v4, 0x7f1402b0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140dcc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mAutoSignInSwitchContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$2;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isPasswordManagerRestrictionUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f070132

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->mSaveSignInTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/password/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/password/e;-><init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    return-void
.end method
