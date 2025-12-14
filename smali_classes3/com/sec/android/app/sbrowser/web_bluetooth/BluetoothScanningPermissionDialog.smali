.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private mIgnorePendingWindowFocusChangeForClose:Z

.field private mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;

.field private mListView:Landroid/widget/ListView;

.field mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->createDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->lambda$createDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/widget/LinearLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->lambda$createDialog$3(Landroid/widget/LinearLayout;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->lambda$createDialog$2(Landroid/view/View;)V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    cmpg-float p2, p0, v1

    if-gez p2, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    cmpl-float p2, p0, p1

    if-lez p2, :cond_3

    move p0, p1

    :cond_3
    :goto_2
    return p0
.end method

.method private createDialog(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140240

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14023f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f14023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f14023d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e004f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0406

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f0b081a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0b0653

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0e0050

    invoke-direct {v5, v6, p1, v7}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0b0926

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b0161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/a;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/sbrowser/web_bluetooth/a;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00cf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/web_bluetooth/a;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/web_bluetooth/a;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->showDialogForView(Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->lambda$showDialogForView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    return-void
.end method

.method private finishDialog(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;->finishDialog(I)V

    return-void
.end method

.method public static getListHeight(IF)I
    .locals 2

    int-to-float p0, p0

    div-float/2addr p0, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42400000    # 48.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v1

    mul-float/2addr p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    const/high16 v1, 0x43cc0000    # 408.0f

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->clamp(FFF)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$createDialog$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->finishDialog(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createDialog$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->finishDialog(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createDialog$3(Landroid/widget/LinearLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    if-eq p6, p10, :cond_1

    :cond_0
    const p2, 0x7f0b02ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->getListHeight(IF)I

    move-result p0

    const/4 p3, -0x1

    invoke-direct {p2, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showDialogForView$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->finishDialog(I)V

    return-void
.end method

.method private showDialogForView(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$1;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14023c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->addOrUpdate(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mListView:Landroid/widget/ListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;->exitDialog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
