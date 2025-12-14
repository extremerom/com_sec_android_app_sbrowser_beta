.class public Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;
.super Landroidx/preference/SeslSwitchPreferenceScreen;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;
    }
.end annotation


# instance fields
.field private mDividerVisible:Z

.field private mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

.field private mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mIconPaddingEnd:Ljava/lang/Integer;

.field private mIsApplyingIconPaddingEnd:Z

.field private mIsInitializing:Z

.field private mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field private mSALoggingDetailExtra:Ljava/lang/String;

.field private mSALoggingEventId:Ljava/lang/String;

.field private mSALoggingEventWidgetId:Ljava/lang/String;

.field private mSALoggingStatusId:Ljava/lang/String;

.field private mSwitchEnabled:Z

.field private mSwitchFrameLarge:Landroid/view/View;

.field private mSwitchFrameNormal:Landroid/view/View;

.field private mSwitchVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mDividerVisible:Z

    sget-object v2, Lcom/sec/android/app/sbrowser/R$styleable;->PreferenceSALog:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventWidgetId:Ljava/lang/String;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDetailExtra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mDividerVisible:Z

    return-void
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e088d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private sendSAEventLog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDetailExtra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cat"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDetailExtra:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendSAEventLog(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "On"

    goto :goto_0

    :cond_2
    const-string p2, "Off"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDetailExtra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "det"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "cat"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDetailExtra:Ljava/lang/String;

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sendSAStatusLog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "On"

    goto :goto_0

    :cond_1
    const-string p1, "Off"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->isDividerVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventWidgetId:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->sendSAEventLog(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->sendSAEventLog(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->sendSAEventLog(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public getSwitchVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    return p0
.end method

.method public isDividerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mDividerVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->isDividerVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->o(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Z)V

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->n(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ", "

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 5
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Lw2/H;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    const v1, 0x1020018

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchFrameNormal:Landroid/view/View;

    const v1, 0x7f0b0e62

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchFrameLarge:Landroid/view/View;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0c33

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->isDividerVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->isDividerVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    const v2, 0x7f0b0c30

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b0c2f

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    if-nez v1, :cond_5

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;->mPaddingEnd:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;->mMinWidth:I

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    iget v1, v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;->mPaddingEnd:I

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom$IconFrameLayout;->mMinWidth:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Lw2/H;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Lw2/H;I)V

    const p2, 0x7f0b0e62

    invoke-virtual {p1, p2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    const v0, 0x1020018

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->isDividerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->sendSAEventLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsInitializing:Z

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onSetInitialValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsInitializing:Z

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsInitializing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->sendSAStatusLog(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mDividerVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mDividerVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDominantText(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    return-void
.end method

.method public setIconLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public setSALoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-void
.end method

.method public setSALoggingEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    return-void
.end method

.method public setSALoggingStatusId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSwitchVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->mSwitchVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
