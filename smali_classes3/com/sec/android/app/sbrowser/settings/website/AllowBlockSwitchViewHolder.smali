.class public Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"


# instance fields
.field private mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

.field private mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mBlockNoisyNotificationsSwitchContainer:Landroid/widget/LinearLayout;

.field private final mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    const v0, 0x7f0b00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitchContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBlockNoisyNotificationsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->lambda$new$1(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->isActionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->isActionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockNoisyNotificationsEnabled(Z)V

    if-eqz p3, :cond_1

    const-string p1, "On"

    goto :goto_0

    :cond_1
    const-string p1, "Off"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p2, "5234"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setBlockNoisyNotificationSwitchStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->mBlockNoisyNotificationsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
