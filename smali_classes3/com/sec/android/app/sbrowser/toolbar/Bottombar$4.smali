.class Lcom/sec/android/app/sbrowser/toolbar/Bottombar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->e(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->p(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;Landroid/view/View;)V

    return-void
.end method
