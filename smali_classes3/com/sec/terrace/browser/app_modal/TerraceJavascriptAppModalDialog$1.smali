.class Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$1;
.super Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->cancel(Z)V

    return-void
.end method
