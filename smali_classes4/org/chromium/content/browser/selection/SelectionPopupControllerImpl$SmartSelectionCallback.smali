.class Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartSelectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onClassified(Lorg/chromium/content_public/browser/SelectionClient$Result;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    iput-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    return-void

    :cond_0
    iget v0, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->startAdjust:I

    if-gtz v0, :cond_5

    iget v2, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->endAdjust:I

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    iput-object p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->h(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->h(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->e(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->f(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    iget-object v2, v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionModified(Ljava/lang/String;ILorg/chromium/content_public/browser/SelectionClient$Result;)V

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    return-void

    :cond_4
    :goto_0
    iget-object p0, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->adjustSelectionByCharacterOffset(IIZ)V

    return-void

    :cond_5
    :goto_1
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;->this$0:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    iput-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    return-void
.end method
