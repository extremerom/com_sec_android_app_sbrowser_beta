.class Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->processText(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$2;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$2;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->handleTextReplacementAction(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
