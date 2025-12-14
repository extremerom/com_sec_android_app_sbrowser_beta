.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->d(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    return-void
.end method
