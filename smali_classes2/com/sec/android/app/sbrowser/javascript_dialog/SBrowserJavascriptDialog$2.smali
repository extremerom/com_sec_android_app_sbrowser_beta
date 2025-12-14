.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->init()V
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
.method public createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 7

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    const v1, 0x7f14084e

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;-><init>(IIZILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createBeforeUnloadDialog(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 7

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    if-eqz p3, :cond_0

    const p3, 0x7f140bdd

    :goto_0
    move v1, p3

    goto :goto_1

    :cond_0
    const p3, 0x7f140676

    goto :goto_0

    :goto_1
    const v2, 0x7f1402c1

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;-><init>(IIZILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 7

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;

    const v1, 0x7f14084e

    const/4 v4, 0x0

    const v2, 0x7f1402c1

    move-object v0, p0

    move v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;-><init>(IIZILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method
