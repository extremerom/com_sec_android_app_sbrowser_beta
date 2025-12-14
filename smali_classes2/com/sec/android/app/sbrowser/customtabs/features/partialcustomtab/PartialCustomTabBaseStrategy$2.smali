.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setWindowTitleForTouchExploration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

.field final synthetic val$coordinatorLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->val$coordinatorLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->getTypeStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$2;->val$coordinatorLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
