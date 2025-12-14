.class Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;Landroid/view/View;)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getType(C)I

    move-result p4

    const/16 p5, 0x13

    if-eq p4, p5, :cond_1

    const/16 p5, 0x1c

    if-ne p4, p5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;->val$ctx:Landroid/content/Context;

    const p2, 0x7f140646

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LH6/o;

    if-eqz p2, :cond_2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, LH6/m;->b(I)V

    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;->val$view:Landroid/view/View;

    const/4 p3, -0x1

    invoke-static {p0, p1, p3, p3}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH6/o;

    invoke-virtual {p0}, LH6/o;->l()V

    const-string p0, ""

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
