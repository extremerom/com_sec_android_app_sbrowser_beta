.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f1405ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "si__HelpIntroPageBaseView"

    if-eqz p1, :cond_0

    const-string p1, "[Legal] More button clicked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    goto :goto_0

    :cond_0
    const-string p1, "[Legal] Agree button clicked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->onAgreeButtonClicked()V

    :goto_0
    return-void
.end method
