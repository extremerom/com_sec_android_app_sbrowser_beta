.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$childView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$itemView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$childView:Landroid/view/View;

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroid/view/View;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
