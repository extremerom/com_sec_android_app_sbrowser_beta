.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Lm/l;

    move-result-object p1

    const-string v0, "SBrowserJavascriptTabModalDialog"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Lm/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x2

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    const-string p0, "Unexpected button pressed in dialog: "

    invoke-static {p2, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->b(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->c(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->access$000(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->d(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->access$100(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "Dialog is not showing"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
