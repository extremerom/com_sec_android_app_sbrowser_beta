.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DataType;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SelectionResult;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;
    }
.end annotation


# static fields
.field private static sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;


# instance fields
.field private mAnimatorTranslation:I

.field private mButtonBar:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private final mCardEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

.field private final mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

.field private mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

.field private mContactDetailsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

.field private final mErrorView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUiErrorView;

.field private final mFullContainer:Landroid/view/ViewGroup;

.field private mHeaderLayout:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;

.field private mIsClientCheckingSelection:Z

.field private mIsClientClosing:Z

.field private mIsClosing:Z

.field private mIsEditingPaymentItem:Z

.field private mIsInitialLayoutComplete:Z

.field private mIsProcessingPayClicked:Z

.field private mIsShowingSpinner:Z

.field private mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

.field private mPayButton:Landroid/widget/Button;

.field private mPaymentContainer:Landroid/widget/ScrollView;

.field private mPaymentContainerLayout:Landroid/widget/LinearLayout;

.field private mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

.field private mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mReadyToPayNotifierForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

.field private final mRequestView:Landroid/view/ViewGroup;

.field private mRetryErrorView:Landroid/widget/TextView;

.field private mSectionAnimator:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

.field private mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

.field private mSheetAnimator:Landroid/animation/Animator;

.field private mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

.field private mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

.field private mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

.field private final mShowDataSource:Z

.field private mSpinnyLayout:Landroid/view/View;

.field private final mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;ZZLjava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShowDataSource:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070c39

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mAnimatorTranslation:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x7f0e055d

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUiErrorView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mErrorView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUiErrorView;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

    new-instance p4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;

    invoke-direct {p4, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-direct {p2, p4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mReadyToPayNotifierForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x7f0e0555

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move v4, p7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->prepareRequestView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mFullContainer:Landroid/view/ViewGroup;

    const p4, 0x7f060842

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p5, -0x2

    const/4 p6, -0x1

    invoke-direct {p4, p6, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p5, 0x51

    iput p5, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p7, 0x7f070bf1

    invoke-virtual {p5, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    sget-object p4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    invoke-direct {p2, p1, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    sget-object p4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    invoke-direct {p2, p1, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCardEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->disableScreenshots()V

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;

    const p4, 0x7f15028c

    invoke-direct {p2, p1, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;-><init>(Landroid/app/Activity;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    new-instance p4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$DismissListener;

    invoke-direct {p4, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$DismissListener;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p6, p6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p0}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0, p6, p6}, Landroid/view/Window;->setLayout(II)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060d8d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p0, p2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p0, p3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Landroid/view/Window;Z)V

    sget-object p2, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Landroid/view/Window;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Landroid/view/Window;Z)V

    sget-object p2, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_DEFAULT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Landroid/view/Window;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updatePayButtonEnabled()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionVisibility()V

    return-void
.end method

.method public static bridge synthetic C()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    return-object v0
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mAnimatorTranslation:I

    return p0
.end method

.method private addCardAndAddressOptionsSettingsView(Landroid/widget/LinearLayout;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    const-string v1, "<link>"

    const-string v2, "</link>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1408e3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    invoke-direct {v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v4}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$8;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14067c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s, %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f15029a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070c32

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070c21

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v0, p0, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addShippingOptionSectionIfNecessary()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    add-int/lit8 v0, v0, 0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mButtonBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method private changeSpinnerVisibility(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsShowingSpinner:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsShowingSpinner:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804b8

    invoke-static {v3, v4}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainer:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSpinnyLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, -0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070bf1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0601f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainer:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSpinnyLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method private createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;I)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    return-object p0
.end method

.method private dismissDialog(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClosing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method private expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$6;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionVisibility()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getMsgResIdBySupportBioTypeToMakeBioAvailable()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f1408e8

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1408e5

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f1408e7

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    const v0, 0x7f1408e6

    :cond_4
    :goto_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mFullContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    return-object p0
.end method

.method private isAcceptingCloseButton()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSheetAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSectionAnimator:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsInitialLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsEditingPaymentItem:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClosing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainer:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mReadyToPayNotifierForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSheetAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method private notifyReadyForInput()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isAcceptingUserInput()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;->onPaymentRequestReadyForInput(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    :cond_0
    return-void
.end method

.method private notifySelectionChecked()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;->onPaymentRequestSelectionChecked(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method private prepareRequestView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 11

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p5

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0895

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSpinnyLayout:Landroid/view/View;

    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsShowingSpinner:Z

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b075f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f141101

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mHeaderLayout:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;->setTitleAndOrigin(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0893

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v2, 0x7f0b0207

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCancelButton:Landroid/widget/Button;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mButtonBar:Landroid/widget/LinearLayout;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b086b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainer:Landroid/widget/ScrollView;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0894

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRequestView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0a03

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRetryErrorView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    const v1, 0x7f1408ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140909

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;->getAddressLabel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f140128

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;->getOptionLabel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const v0, 0x7f1408d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1410e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const v0, 0x7f1408ef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1410e0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setPongdangEnabled(Z)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setPongdangEnabled(Z)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_0

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setCanAddItems(Z)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setCanAddItems(Z)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->addCardAndAddressOptionsSettingsView(Landroid/widget/LinearLayout;)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private processPayButton()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->changeSpinnerVisibility(Z)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :goto_2
    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientCheckingSelection:Z

    return-void
.end method

.method private restoreStatusBarTheme()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->shouldSetNavigationBarColor()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isLightTheme()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsInitialLayoutComplete:Z

    return-void
.end method

.method public static setObserverForTest(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    return-void
.end method

.method private startSectionResizeAnimation()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$11;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSectionAnimator:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSectionAnimator:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSheetAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private updateAllSectionInvisible()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->startSectionResizeAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionButtons()V

    return-void
.end method

.method private updatePayButtonEnabled()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v1

    :goto_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientCheckingSelection:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsEditingPaymentItem:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClosing:Z

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    :goto_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f1408d4

    goto :goto_8

    :cond_8
    const v0, 0x7f1408ee

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mReadyToPayNotifierForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->run()V

    return-void
.end method

.method private updateSectionButtons()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setIsEditButtonEnabled(Z)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateSectionVisibility()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->startSectionResizeAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-ne v1, v0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-ne v1, v0, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-ne v1, v0, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-ne v1, v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->focusSection(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionButtons()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->changeSpinnerVisibility(Z)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->dismissDialog(Z)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->notifyReadyForInput()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->notifySelectionChecked()V

    return-void
.end method


# virtual methods
.method public close(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientClosing:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$5;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mErrorView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUiErrorView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mFullContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUiErrorView;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->restoreStatusBarTheme()V

    sget-object p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;->onPaymentRequestResultReady(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    :cond_1
    return-void
.end method

.method public dimBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public disableAddingNewCardsDuringRetry()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setCanAddItems(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    return-void
.end method

.method public getAdditionalText(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItemIndex()I

    move-result p1

    const/4 v0, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-ne p1, v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;->getSelectPrompt()I

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingStrings:Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;->getUnsupported()I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->getMsgResIdBySupportBioTypeToMakeBioAvailable()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getAdditionalText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1
.end method

.method public getCardEditorDialog()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCardEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    return-object p0
.end method

.method public getContactDetailsSectionForTest()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method public getDialogForTest()Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public getEditorDialog()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    return-object p0
.end method

.method public getPaymentMethodSectionForTest()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method public getShippingAddressSectionForTest()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    return-object p0
.end method

.method public isAcceptingUserInput()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isAcceptingCloseButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientCheckingSelection:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAdditionalTextDisplayingWarning(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItemIndex()I

    move-result p0

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessingPayClicked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    return p0
.end method

.method public onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const-string v1, "201"

    if-ne p1, v0, :cond_0

    const-string v0, "2305"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v0, :cond_1

    const-string v0, "2335"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_2

    const-string v0, "2306"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateStateFromResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isAcceptingCloseButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isAcceptingUserInput()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const-string v5, "201"

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    const-string v6, "2302"

    if-eq p1, v0, :cond_3

    invoke-static {v5, v6, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v5, v6, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    const-string v1, "2366"

    if-eq p1, v0, :cond_5

    const-string p1, "1"

    invoke-static {v5, v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_5
    const-string p1, "0"

    invoke-static {v5, v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    const-string v6, "2303"

    if-eq p1, v0, :cond_7

    invoke-static {v5, v6, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_7
    invoke-static {v5, v6, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-eq p1, v0, :cond_9

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    const-string v6, "2333"

    if-eq p1, v0, :cond_b

    invoke-static {v5, v6, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_b
    invoke-static {v5, v6, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPayButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->processPayButton()V

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    const-string p1, "2307"

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->dismissDialog(Z)V

    :cond_e
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updatePayButtonEnabled()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClosing:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCardEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mCardEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->dismiss()V

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;->onPaymentRequestDismiss()V

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientClosing:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onDismiss()V

    :cond_3
    return-void
.end method

.method public onEditPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const-string v1, "201"

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-interface {v0, v3, p2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    const-string v3, "2362"

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0, v2, p2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    const-string v2, "2364"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v2, 0x4

    invoke-interface {v0, v2, p2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result v0

    const-string p2, "2363"

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateStateFromResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;I)V

    return-void
.end method

.method public onPayButtonProcessingCancelled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->changeSpinnerVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updatePayButtonEnabled()V

    return-void
.end method

.method public onPaymentOptionChanged(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const-string v1, "2304"

    const-string v2, "201"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    const-wide/16 v3, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-interface {v0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    const/4 v3, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v4, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    if-ne p1, v0, :cond_2

    const-string v0, "2331"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eq v0, p2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-interface {v0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_3

    const-string v0, "2334"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x0

    invoke-interface {v0, v3, p2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    if-ne p1, v0, :cond_4

    const-string v0, "2332"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mUpdateSectionsCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-interface {v0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p2

    goto :goto_1

    :cond_4
    :goto_0
    move p2, v3

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateStateFromResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;I)V

    return-void
.end method

.method public onSectionClicked(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateAllSectionInvisible()V

    :goto_0
    return-void
.end method

.method public selectedPaymentMethodUpdated(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getShippingAddresses()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->getContactDetails()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setAutoGeneratedIcon(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mHeaderLayout:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;->setAutoGeneratedIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRetryErrorMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRetryErrorView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRetryErrorView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c21

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRetryErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mRetryErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setShippingAddressSectionFocusChangedObserver(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setOptionSectionFocusChangedObserver(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;)V

    return-void
.end method

.method public setTitleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mHeaderLayout:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestHeader;->setTitleBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getDefaultPaymentInformation(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0896

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public showProcessingMessage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->changeSpinnerVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProcessingMessageAfterUiSkip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsProcessingPayClicked:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->showProcessingMessage()V

    return-void
.end method

.method public updateOrderSummarySection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getTotal()Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mOrderSummarySection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsEditingPaymentItem:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingAddressSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mShippingOptionSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->addShippingOptionSectionIfNecessary()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mContactDetailsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mPaymentMethodSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updatePayButtonEnabled()V

    return-void
.end method

.method public updateStateFromResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsClientCheckingSelection:Z

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mIsEditingPaymentItem:Z

    if-eqz v2, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->mSelectedSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSectionVisibility()V

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setDisplayMode(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->expand(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updatePayButtonEnabled()V

    return-void
.end method
