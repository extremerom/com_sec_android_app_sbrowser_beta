.class Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;IIII)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$toastMsgMaxLength:I

.field final synthetic val$toastMsgStringId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;II)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$toastMsgStringId:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$toastMsgMaxLength:I

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$toastMsgStringId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$toastMsgMaxLength:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LH6/o;

    if-eqz p3, :cond_0

    const/4 p4, 0x3

    invoke-virtual {p3, p4}, LH6/m;->b(I)V

    :cond_0
    new-instance p3, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;->val$ctx:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p4, -0x1

    invoke-static {p0, p2, p4, p4}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH6/o;

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    return-object p1
.end method
