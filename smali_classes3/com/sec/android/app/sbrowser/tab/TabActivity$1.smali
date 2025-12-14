.class Lcom/sec/android/app/sbrowser/tab/TabActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity;->initOnPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->w(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    const/4 p0, 0x1

    return p0
.end method
