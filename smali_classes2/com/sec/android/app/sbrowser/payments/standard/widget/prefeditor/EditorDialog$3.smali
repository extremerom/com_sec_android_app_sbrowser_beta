.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 0

    const-string p0, "EditorDialog"

    const-string p1, "doInBackground"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 2

    const-string v0, "EditorDialog"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->f(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/text/TextWatcher;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$3;->onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    return-void
.end method
