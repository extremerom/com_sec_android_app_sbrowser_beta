.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;->createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method

.method public createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    const v0, 0x7f1402c1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method

.method public createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
    .locals 6

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;->createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method
