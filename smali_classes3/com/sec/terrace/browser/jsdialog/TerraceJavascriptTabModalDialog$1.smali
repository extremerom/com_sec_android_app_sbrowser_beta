.class Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$1;
.super Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInput()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->cancel(Z)V

    return-void
.end method
