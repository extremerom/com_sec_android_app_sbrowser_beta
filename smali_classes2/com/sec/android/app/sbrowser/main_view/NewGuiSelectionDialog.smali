.class public Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlertDialog:Lm/l;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStyleRedioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->lambda$showDialogIfNeeded$2(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->lambda$showDialogIfNeeded$0(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->lambda$showDialogIfNeeded$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private synthetic lambda$showDialogIfNeeded$0(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p1}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->setDialogShown()V

    return-void
.end method

.method private synthetic lambda$showDialogIfNeeded$1(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mStyleRedioGroup:Landroid/widget/RadioGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const p2, 0x7f0b07d0

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const-string p2, "New style enabled : "

    const-string v1, "NewGuiSelectionDailog"

    invoke-static {p2, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "New"

    goto :goto_1

    :cond_3
    const-string p2, "Old"

    :goto_1
    const-string v0, "201"

    const-string v1, "7311"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140d78

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_4

    const-string p1, "On"

    goto :goto_2

    :cond_4
    const-string p1, "Off"

    :goto_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showDialogIfNeeded$2(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0b07d0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->setNewGuiEnabled(Z)V

    return-void
.end method

.method private needToShowDialog()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_new_gui_select_dialog_shown"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setDialogShown()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_new_gui_select_dialog_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNewGuiEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_use_updated_samsung_internet"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setStyleRadioButton(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mStyleRedioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v1, 0x7f0b07d0

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    invoke-virtual {p0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mStyleRedioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v1, 0x7f0b084b

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    invoke-virtual {p0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "pref_use_updated_samsung_internet"

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_new_gui_select_dialog_shown"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mStyleRedioGroup:Landroid/widget/RadioGroup;

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->setStyleRadioButton(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method public showDialogIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->needToShowDialog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lm/k;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f140a78

    invoke-virtual {v1, v3}, Lm/k;->e(I)V

    const v3, 0x7f0e0517

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v1

    iget-object v2, v1, Lm/k;->a:Lm/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lm/h;->m:Z

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/Z;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/Z;-><init>(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    iput-object v3, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/k;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/k;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f14045c

    invoke-virtual {v1, v2, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->setNewGuiEnabled(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "internet-native://newtab/"

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mAlertDialog:Lm/l;

    const v1, 0x7f0b0bf3

    invoke-virtual {p1, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mStyleRedioGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/a0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/a0;-><init>(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_use_updated_samsung_internet"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->setStyleRadioButton(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
