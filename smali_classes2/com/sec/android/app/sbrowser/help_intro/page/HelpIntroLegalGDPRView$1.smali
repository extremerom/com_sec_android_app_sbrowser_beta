.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->updateTosView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMinLines(I)V

    const/4 p0, 0x0

    return p0
.end method
