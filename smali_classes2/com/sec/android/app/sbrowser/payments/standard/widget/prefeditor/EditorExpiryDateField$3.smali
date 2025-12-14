.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    instance-of p2, p1, Landroid/widget/EditText;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->q(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Landroid/widget/EditText;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
