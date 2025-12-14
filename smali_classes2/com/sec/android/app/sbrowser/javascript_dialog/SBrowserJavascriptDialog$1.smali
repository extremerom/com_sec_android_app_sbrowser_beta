.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Lm/l;

    move-result-object p1

    const-string v0, "SBrowserJavascriptDialog"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Lm/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    const-string p0, "Unexpected button pressed in dialog: "

    invoke-static {p2, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->b(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->c(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->access$000(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->c(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->access$100(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "Dialog is not showing"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
