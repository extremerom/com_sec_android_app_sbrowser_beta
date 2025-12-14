.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->updateDescriptionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->lambda$onPreDraw$0(I)V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHeight(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Change description view height: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__HelpIntroSingleDescriptionView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    const-string v0, "si__HelpIntroSingleDescriptionView"

    const-string v1, "onPreDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4003333333333333L    # 2.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    new-instance v2, Lcom/sec/android/app/sbrowser/help_intro/page/c;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/c;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView$1;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
