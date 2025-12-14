.class Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->onCloseButtonClicked()V

    goto :goto_0

    :sswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->access$300(Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;I)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->access$000(Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->access$100(Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->access$200(Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b02e3 -> :sswitch_2
        0x7f0b02e4 -> :sswitch_1
        0x7f0b0ba4 -> :sswitch_0
    .end sparse-switch
.end method
