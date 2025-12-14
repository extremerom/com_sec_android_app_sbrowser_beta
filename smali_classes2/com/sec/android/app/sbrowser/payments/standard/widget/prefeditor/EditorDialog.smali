.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;


# instance fields
.field private mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBottomView:Landroid/view/View;

.field private mCardInput:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCardNumberFormatter:Landroid/text/TextWatcher;

.field private final mCardNumberInputFilter:Landroid/text/InputFilter;

.field private final mContext:Landroid/content/Context;

.field private mDataView:Landroid/view/ViewGroup;

.field private mDoneButton:Landroid/widget/Button;

.field private final mDropdownFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditableTextFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorExpiryDateField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

.field private final mFieldViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Landroid/view/View;

.field private final mHalfRowMargin:I

.field private final mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/view/View;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhoneFormatter:Landroid/text/TextWatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPhoneInput:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mToolbar:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V
    .locals 2

    const p2, 0x7f150288

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c21

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mHalfRowMargin:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditableTextFields:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDropdownFields:Ljava/util/List;

    const-string p2, "^[\\d- ]*$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardNumberInputFilter:Landroid/text/InputFilter;

    new-instance p2, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardNumberFormatter:Landroid/text/TextWatcher;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const v1, 0x7f060d8d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {p2, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Landroid/view/Window;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_DEFAULT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Landroid/view/Window;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->lambda$prepareToolbar$1(Landroid/view/View;)V

    return-void
.end method

.method private addFieldViewToEditor(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)Landroid/view/View;
    .locals 11

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;->getLayout()Landroid/view/View;

    move-result-object p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorLabelField;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorLabelField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorLabelField;->getLayout()Landroid/view/View;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$7;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDropdownFields:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getDropdown()Landroid/widget/Spinner;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorExpiryDateField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    if-eqz p2, :cond_2

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getLayout()Landroid/view/View;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0899

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070bf6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$8;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$8;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    :goto_0
    move-object p0, v0

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorExpiryDateField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->getLayout()Landroid/view/View;

    move-result-object p0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardNumberInputFilter:Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardNumberFormatter:Landroid/text/TextWatcher;

    :goto_1
    move-object v9, v0

    move-object v10, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneFormatter:Landroid/text/TextWatcher;

    move-object v10, v0

    move-object v9, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v9, v3

    move-object v10, v9

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Landroid/widget/TextView$OnEditorActionListener;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/text/InputFilter;Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditableTextFields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_a
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v4

    if-ne v4, v2, :cond_b

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardInput:Landroid/widget/TextView;

    goto :goto_0

    :cond_b
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result p2

    if-ne p2, v1, :cond_4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneInput:Landroid/widget/TextView;

    goto/16 :goto_0

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method private applyWindowInsets(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$12;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->lambda$prepareToolbar$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelEdit()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->cancel()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->dismiss()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDoneButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneFormatter:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneInput:Landroid/widget/TextView;

    return-object p0
.end method

.method private getViewsWithInvalidInformation(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mToolbar:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    return-object p0
.end method

.method private handleExceptionForExpirationMonth()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneFormatter:Landroid/text/TextWatcher;

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->cancelEdit()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->prepareEditor()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showAlreadyExistedMessageToast()V

    return-void
.end method

.method private synthetic lambda$prepareToolbar$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->cancelEdit()V

    return-void
.end method

.method private synthetic lambda$prepareToolbar$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->onClickDone()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateLayout()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->validateForm(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    return-object v0
.end method

.method private onClickDone()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorExpiryDateField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->handleExceptionForExpirationMonth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorExpiryDateField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->setFocusResetMonth()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->isDuplicatedItem()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showAlreadyExistedMessageToast()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->done()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->dismiss()V

    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;->onEditorValidationError()V

    :cond_3
    return-void
.end method

.method private prepareBottomBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBottomView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0b041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDoneButton:Landroid/widget/Button;

    const v1, 0x7f0b089a

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0b0209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b0898

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V

    return-void
.end method

.method private prepareEditor()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->removeTextChangedListenersAndInputFilters()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0b0301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditableTextFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDropdownFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isFullLine()Z

    move-result v5

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getFields()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isFullLine()Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDataView:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->addFieldViewToEditor(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)Landroid/view/View;

    goto :goto_3

    :cond_3
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->addFieldViewToEditor(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->addFieldViewToEditor(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mHalfRowMargin:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDataView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFooter:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private prepareToolbar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mToolbar:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->initialize(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mToolbar:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/a;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->setCancelOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mToolbar:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/a;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->setSaveOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private removeTextChangedListenersAndInputFilters()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardInput:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardNumberFormatter:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardInput:Landroid/widget/TextView;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mCardInput:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneInput:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneFormatter:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mPhoneInput:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private requestSetPaddingForTabletMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method public static setEditorObserverForTest(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->setEditorObserverForTest(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;)V

    return-void
.end method

.method private showAlreadyExistedMessageToast()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f14013e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showDiscardPopup(Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f150324

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$6;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    const v2, 0x7f1400ff

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    const p0, 0x7f1400fe

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1400fd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$11;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$11;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateMenuItemVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->requestSetPaddingForTabletMode()V

    :cond_0
    return-void
.end method

.method private updateMenuItemVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBottomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBottomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBottomView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private validateForm(Z)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->getViewsWithInvalidInformation(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;

    if-eqz p1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;->updateDisplayedError(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public disableScreenshots()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public getDropdownFieldsForTest()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDropdownFields:Ljava/util/List;

    return-object p0
.end method

.method public getEditableTextFieldsForTest()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditableTextFields:Ljava/util/List;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->validateForm(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->isModified()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showDiscardPopup(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->cancelEdit()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b089a

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->onClickDone()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0898

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->cancelEdit()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->removeTextChangedListenersAndInputFilters()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->cancel()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mDataView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0b0495

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->showKeyboard(Landroid/widget/EditText;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V
    .locals 3

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0556

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0559

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFooter:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    const v0, 0x7f0b0a73

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080080

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->prepareToolbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->prepareEditor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->prepareBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->applyWindowInsets(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateLayout()V

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$9;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$9;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->getViewsWithInvalidInformation(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mEditorModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f14014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;->scrollToAndFocus()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mFieldViews:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;->scrollToAndFocus()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->show()V

    return-void
.end method

.method public updateBillingAddressDropBox()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mBillingAddressField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->update()V

    :cond_0
    return-void
.end method

.method public updateDoneButtonStatus()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
