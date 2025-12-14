.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)Z

    move-result p1

    const-string v0, "HelpIntroPermissionBaseView"

    if-eqz p1, :cond_0

    const-string p1, "[Legal] More button clicked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->c(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    goto :goto_0

    :cond_0
    const-string p1, "[Legal] Agree button clicked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->onAgreeButtonClicked()V

    :goto_0
    return-void
.end method
