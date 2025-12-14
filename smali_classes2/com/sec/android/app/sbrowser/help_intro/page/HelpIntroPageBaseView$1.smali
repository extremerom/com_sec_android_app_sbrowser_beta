.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->lambda$onPreDraw$0()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updateButtonText()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    const-string v0, "si__HelpIntroPageBaseView"

    const-string v1, "onPreDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method
