.class public final synthetic Lorg/chromium/content/browser/selection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;
.implements Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/a;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadbackView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/a;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->c(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/a;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->processText(Landroid/content/Intent;)V

    return-void
.end method
