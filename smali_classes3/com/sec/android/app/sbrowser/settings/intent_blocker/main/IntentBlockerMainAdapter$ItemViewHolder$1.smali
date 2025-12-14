.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
