.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->onMoreButtonClicked()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
