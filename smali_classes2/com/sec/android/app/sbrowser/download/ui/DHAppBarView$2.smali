.class Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->updateActionbarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->h(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/CheckBox;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
