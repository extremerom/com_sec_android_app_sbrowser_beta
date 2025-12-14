.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectAll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    return-void
.end method

.method public setTextSelectionState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->r(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    return-void
.end method
