.class Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0xff

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->b(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lm/l;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->b(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lm/l;

    move-result-object p0

    invoke-virtual {p0, p2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
