.class Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setButtonLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$7;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$7;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->f(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;Landroid/view/View;)V

    return-void
.end method
