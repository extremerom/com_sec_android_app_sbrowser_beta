.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->show(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$3;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$3;->this$0:Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->access$200(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;Z)V

    return-void
.end method
